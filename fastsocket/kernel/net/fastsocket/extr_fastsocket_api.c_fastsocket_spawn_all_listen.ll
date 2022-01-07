; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/fastsocket/extr_fastsocket_api.c_fastsocket_spawn_all_listen.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/fastsocket/extr_fastsocket_api.c_fastsocket_spawn_all_listen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.files_struct* }
%struct.files_struct = type { i32 }
%struct.fdtable = type { i32, i32*, i32 }
%struct.file = type { i32, i32, %struct.socket* }
%struct.socket = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@current = common dso_local global %struct.TYPE_4__* null, align 8
@DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Spawn all listen socket of pid(%u)\0A\00", align 1
@FMODE_FASTSOCKET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"fd(%d) is fastsocket fd, sock state(%d) subfile(%p)\0A\00", align 1
@TCP_LISTEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @fastsocket_spawn_all_listen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fastsocket_spawn_all_listen() #0 {
  %1 = alloca %struct.files_struct*, align 8
  %2 = alloca %struct.fdtable*, align 8
  %3 = alloca %struct.file*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.socket*, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %9 = load %struct.files_struct*, %struct.files_struct** %8, align 8
  store %struct.files_struct* %9, %struct.files_struct** %1, align 8
  store i32 0, i32* %5, align 4
  %10 = load i32, i32* @DEBUG, align 4
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 (i32, i8*, i32, ...) @DPRINTK(i32 %10, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = call i32 (...) @rcu_read_lock()
  %16 = load %struct.files_struct*, %struct.files_struct** %1, align 8
  %17 = call %struct.fdtable* @files_fdtable(%struct.files_struct* %16)
  store %struct.fdtable* %17, %struct.fdtable** %2, align 8
  store i32 0, i32* %4, align 4
  br label %18

18:                                               ; preds = %100, %0
  %19 = load i32, i32* %4, align 4
  %20 = load %struct.fdtable*, %struct.fdtable** %2, align 8
  %21 = getelementptr inbounds %struct.fdtable, %struct.fdtable* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ult i32 %19, %22
  br i1 %23, label %24, label %103

24:                                               ; preds = %18
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.fdtable*, %struct.fdtable** %2, align 8
  %27 = getelementptr inbounds %struct.fdtable, %struct.fdtable* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @FD_ISSET(i32 %25, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %99

31:                                               ; preds = %24
  %32 = load %struct.fdtable*, %struct.fdtable** %2, align 8
  %33 = getelementptr inbounds %struct.fdtable, %struct.fdtable* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %4, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = call %struct.file* @rcu_dereference(i32 %38)
  store %struct.file* %39, %struct.file** %3, align 8
  %40 = load %struct.file*, %struct.file** %3, align 8
  %41 = icmp ne %struct.file* %40, null
  br i1 %41, label %42, label %97

42:                                               ; preds = %31
  %43 = load %struct.file*, %struct.file** %3, align 8
  %44 = getelementptr inbounds %struct.file, %struct.file* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @FMODE_FASTSOCKET, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %97

49:                                               ; preds = %42
  %50 = load %struct.file*, %struct.file** %3, align 8
  %51 = getelementptr inbounds %struct.file, %struct.file* %50, i32 0, i32 2
  %52 = load %struct.socket*, %struct.socket** %51, align 8
  store %struct.socket* %52, %struct.socket** %6, align 8
  %53 = load i32, i32* @DEBUG, align 4
  %54 = load i32, i32* %4, align 4
  %55 = load %struct.socket*, %struct.socket** %6, align 8
  %56 = getelementptr inbounds %struct.socket, %struct.socket* %55, i32 0, i32 0
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.file*, %struct.file** %3, align 8
  %61 = getelementptr inbounds %struct.file, %struct.file* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 (i32, i8*, i32, ...) @DPRINTK(i32 %53, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %54, i64 %59, i32 %62)
  %64 = load %struct.socket*, %struct.socket** %6, align 8
  %65 = getelementptr inbounds %struct.socket, %struct.socket* %64, i32 0, i32 0
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @TCP_LISTEN, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %96

71:                                               ; preds = %49
  %72 = load %struct.file*, %struct.file** %3, align 8
  %73 = getelementptr inbounds %struct.file, %struct.file* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %88

76:                                               ; preds = %71
  %77 = load %struct.socket*, %struct.socket** %6, align 8
  %78 = load i32, i32* %4, align 4
  %79 = call i32 @fscoket_spawn_restore(%struct.socket* %77, i32 %78)
  %80 = load %struct.fdtable*, %struct.fdtable** %2, align 8
  %81 = getelementptr inbounds %struct.fdtable, %struct.fdtable* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %4, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = call %struct.file* @rcu_dereference(i32 %86)
  store %struct.file* %87, %struct.file** %3, align 8
  br label %88

88:                                               ; preds = %76, %71
  %89 = load %struct.file*, %struct.file** %3, align 8
  %90 = load i32, i32* %4, align 4
  %91 = call i64 @fsocket_spawn(%struct.file* %89, i32 %90, i32 -1)
  %92 = load i32, i32* %5, align 4
  %93 = sext i32 %92 to i64
  %94 = add nsw i64 %93, %91
  %95 = trunc i64 %94 to i32
  store i32 %95, i32* %5, align 4
  br label %96

96:                                               ; preds = %88, %49
  br label %97

97:                                               ; preds = %96, %42, %31
  %98 = call i32 (...) @rcu_read_unlock()
  br label %99

99:                                               ; preds = %97, %24
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %4, align 4
  %102 = add i32 %101, 1
  store i32 %102, i32* %4, align 4
  br label %18

103:                                              ; preds = %18
  %104 = call i32 (...) @rcu_read_unlock()
  %105 = load i32, i32* %5, align 4
  ret i32 %105
}

declare dso_local i32 @DPRINTK(i32, i8*, i32, ...) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.fdtable* @files_fdtable(%struct.files_struct*) #1

declare dso_local i64 @FD_ISSET(i32, i32) #1

declare dso_local %struct.file* @rcu_dereference(i32) #1

declare dso_local i32 @fscoket_spawn_restore(%struct.socket*, i32) #1

declare dso_local i64 @fsocket_spawn(%struct.file*, i32, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
