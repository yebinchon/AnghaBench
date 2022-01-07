; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/unix/extr_af_unix.c_unix_autobind.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/unix/extr_af_unix.c_unix_autobind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32, %struct.sock* }
%struct.sock = type { i64 }
%struct.net = type { i32 }
%struct.unix_sock = type { i32, %struct.unix_address* }
%struct.unix_address = type { i64, i64, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i64, i32 }

@unix_autobind.ordernum = internal global i32 1, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@AF_UNIX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%05x\00", align 1
@unix_table_lock = common dso_local global i32 0, align 4
@unix_socket_table = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*)* @unix_autobind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unix_autobind(%struct.socket* %0) #0 {
  %2 = alloca %struct.socket*, align 8
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.net*, align 8
  %5 = alloca %struct.unix_sock*, align 8
  %6 = alloca %struct.unix_address*, align 8
  %7 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %2, align 8
  %8 = load %struct.socket*, %struct.socket** %2, align 8
  %9 = getelementptr inbounds %struct.socket, %struct.socket* %8, i32 0, i32 1
  %10 = load %struct.sock*, %struct.sock** %9, align 8
  store %struct.sock* %10, %struct.sock** %3, align 8
  %11 = load %struct.sock*, %struct.sock** %3, align 8
  %12 = call %struct.net* @sock_net(%struct.sock* %11)
  store %struct.net* %12, %struct.net** %4, align 8
  %13 = load %struct.sock*, %struct.sock** %3, align 8
  %14 = call %struct.unix_sock* @unix_sk(%struct.sock* %13)
  store %struct.unix_sock* %14, %struct.unix_sock** %5, align 8
  %15 = load %struct.unix_sock*, %struct.unix_sock** %5, align 8
  %16 = getelementptr inbounds %struct.unix_sock, %struct.unix_sock* %15, i32 0, i32 0
  %17 = call i32 @mutex_lock(i32* %16)
  store i32 0, i32* %7, align 4
  %18 = load %struct.unix_sock*, %struct.unix_sock** %5, align 8
  %19 = getelementptr inbounds %struct.unix_sock, %struct.unix_sock* %18, i32 0, i32 1
  %20 = load %struct.unix_address*, %struct.unix_address** %19, align 8
  %21 = icmp ne %struct.unix_address* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  br label %111

23:                                               ; preds = %1
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call %struct.unix_address* @kzalloc(i32 50, i32 %26)
  store %struct.unix_address* %27, %struct.unix_address** %6, align 8
  %28 = load %struct.unix_address*, %struct.unix_address** %6, align 8
  %29 = icmp ne %struct.unix_address* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %23
  br label %111

31:                                               ; preds = %23
  %32 = load i32, i32* @AF_UNIX, align 4
  %33 = load %struct.unix_address*, %struct.unix_address** %6, align 8
  %34 = getelementptr inbounds %struct.unix_address, %struct.unix_address* %33, i32 0, i32 2
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  store i32 %32, i32* %36, align 8
  %37 = load %struct.unix_address*, %struct.unix_address** %6, align 8
  %38 = getelementptr inbounds %struct.unix_address, %struct.unix_address* %37, i32 0, i32 3
  %39 = call i32 @atomic_set(i32* %38, i32 1)
  br label %40

40:                                               ; preds = %89, %31
  %41 = load %struct.unix_address*, %struct.unix_address** %6, align 8
  %42 = getelementptr inbounds %struct.unix_address, %struct.unix_address* %41, i32 0, i32 2
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %45, 1
  %47 = load i32, i32* @unix_autobind.ordernum, align 4
  %48 = call i64 @sprintf(i64 %46, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = add nsw i64 %48, 1
  %50 = add i64 %49, 2
  %51 = load %struct.unix_address*, %struct.unix_address** %6, align 8
  %52 = getelementptr inbounds %struct.unix_address, %struct.unix_address* %51, i32 0, i32 1
  store i64 %50, i64* %52, align 8
  %53 = load %struct.unix_address*, %struct.unix_address** %6, align 8
  %54 = getelementptr inbounds %struct.unix_address, %struct.unix_address* %53, i32 0, i32 2
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = load %struct.unix_address*, %struct.unix_address** %6, align 8
  %57 = getelementptr inbounds %struct.unix_address, %struct.unix_address* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @csum_partial(%struct.TYPE_3__* %55, i64 %58, i32 0)
  %60 = call i64 @unix_hash_fold(i32 %59)
  %61 = load %struct.unix_address*, %struct.unix_address** %6, align 8
  %62 = getelementptr inbounds %struct.unix_address, %struct.unix_address* %61, i32 0, i32 0
  store i64 %60, i64* %62, align 8
  %63 = call i32 @spin_lock(i32* @unix_table_lock)
  %64 = load i32, i32* @unix_autobind.ordernum, align 4
  %65 = add nsw i32 %64, 1
  %66 = and i32 %65, 1048575
  store i32 %66, i32* @unix_autobind.ordernum, align 4
  %67 = load %struct.net*, %struct.net** %4, align 8
  %68 = load %struct.unix_address*, %struct.unix_address** %6, align 8
  %69 = getelementptr inbounds %struct.unix_address, %struct.unix_address* %68, i32 0, i32 2
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %69, align 8
  %71 = load %struct.unix_address*, %struct.unix_address** %6, align 8
  %72 = getelementptr inbounds %struct.unix_address, %struct.unix_address* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.socket*, %struct.socket** %2, align 8
  %75 = getelementptr inbounds %struct.socket, %struct.socket* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.unix_address*, %struct.unix_address** %6, align 8
  %78 = getelementptr inbounds %struct.unix_address, %struct.unix_address* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = call i64 @__unix_find_socket_byname(%struct.net* %67, %struct.TYPE_3__* %70, i64 %73, i32 %76, i64 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %90

82:                                               ; preds = %40
  %83 = call i32 @spin_unlock(i32* @unix_table_lock)
  %84 = load i32, i32* @unix_autobind.ordernum, align 4
  %85 = and i32 %84, 255
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %89, label %87

87:                                               ; preds = %82
  %88 = call i32 (...) @yield()
  br label %89

89:                                               ; preds = %87, %82
  br label %40

90:                                               ; preds = %40
  %91 = load %struct.sock*, %struct.sock** %3, align 8
  %92 = getelementptr inbounds %struct.sock, %struct.sock* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.unix_address*, %struct.unix_address** %6, align 8
  %95 = getelementptr inbounds %struct.unix_address, %struct.unix_address* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = xor i64 %96, %93
  store i64 %97, i64* %95, align 8
  %98 = load %struct.sock*, %struct.sock** %3, align 8
  %99 = call i32 @__unix_remove_socket(%struct.sock* %98)
  %100 = load %struct.unix_address*, %struct.unix_address** %6, align 8
  %101 = load %struct.unix_sock*, %struct.unix_sock** %5, align 8
  %102 = getelementptr inbounds %struct.unix_sock, %struct.unix_sock* %101, i32 0, i32 1
  store %struct.unix_address* %100, %struct.unix_address** %102, align 8
  %103 = load i32*, i32** @unix_socket_table, align 8
  %104 = load %struct.unix_address*, %struct.unix_address** %6, align 8
  %105 = getelementptr inbounds %struct.unix_address, %struct.unix_address* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = getelementptr inbounds i32, i32* %103, i64 %106
  %108 = load %struct.sock*, %struct.sock** %3, align 8
  %109 = call i32 @__unix_insert_socket(i32* %107, %struct.sock* %108)
  %110 = call i32 @spin_unlock(i32* @unix_table_lock)
  store i32 0, i32* %7, align 4
  br label %111

111:                                              ; preds = %90, %30, %22
  %112 = load %struct.unix_sock*, %struct.unix_sock** %5, align 8
  %113 = getelementptr inbounds %struct.unix_sock, %struct.unix_sock* %112, i32 0, i32 0
  %114 = call i32 @mutex_unlock(i32* %113)
  %115 = load i32, i32* %7, align 4
  ret i32 %115
}

declare dso_local %struct.net* @sock_net(%struct.sock*) #1

declare dso_local %struct.unix_sock* @unix_sk(%struct.sock*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.unix_address* @kzalloc(i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i64 @sprintf(i64, i8*, i32) #1

declare dso_local i64 @unix_hash_fold(i32) #1

declare dso_local i32 @csum_partial(%struct.TYPE_3__*, i64, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @__unix_find_socket_byname(%struct.net*, %struct.TYPE_3__*, i64, i32, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @yield(...) #1

declare dso_local i32 @__unix_remove_socket(%struct.sock*) #1

declare dso_local i32 @__unix_insert_socket(i32*, %struct.sock*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
