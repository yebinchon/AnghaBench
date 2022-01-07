; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_glock.c_dump_holder.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_glock.c_dump_holder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.gfs2_holder = type { i64, i32, i32, i32, i32, i32 }
%struct.task_struct = type { i8* }

@KSYM_SYMBOL_LEN = common dso_local global i32 0, align 4
@PIDTYPE_PID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c" H: s:%s f:%s e:%d p:%ld [%s] %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"(ended)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, %struct.gfs2_holder*)* @dump_holder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dump_holder(%struct.seq_file* %0, %struct.gfs2_holder* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca %struct.gfs2_holder*, align 8
  %5 = alloca %struct.task_struct*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca [32 x i8], align 16
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store %struct.gfs2_holder* %1, %struct.gfs2_holder** %4, align 8
  store %struct.task_struct* null, %struct.task_struct** %5, align 8
  %9 = load i32, i32* @KSYM_SYMBOL_LEN, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %6, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %7, align 8
  %13 = load %struct.gfs2_holder*, %struct.gfs2_holder** %4, align 8
  %14 = getelementptr inbounds %struct.gfs2_holder, %struct.gfs2_holder* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @sprint_symbol(i8* %12, i32 %15)
  %17 = load %struct.gfs2_holder*, %struct.gfs2_holder** %4, align 8
  %18 = getelementptr inbounds %struct.gfs2_holder, %struct.gfs2_holder* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %2
  %22 = load %struct.gfs2_holder*, %struct.gfs2_holder** %4, align 8
  %23 = getelementptr inbounds %struct.gfs2_holder, %struct.gfs2_holder* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i32, i32* @PIDTYPE_PID, align 4
  %26 = call %struct.task_struct* @pid_task(i64 %24, i32 %25)
  store %struct.task_struct* %26, %struct.task_struct** %5, align 8
  br label %27

27:                                               ; preds = %21, %2
  %28 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %29 = load %struct.gfs2_holder*, %struct.gfs2_holder** %4, align 8
  %30 = getelementptr inbounds %struct.gfs2_holder, %struct.gfs2_holder* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @state2str(i32 %31)
  %33 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %34 = load %struct.gfs2_holder*, %struct.gfs2_holder** %4, align 8
  %35 = getelementptr inbounds %struct.gfs2_holder, %struct.gfs2_holder* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.gfs2_holder*, %struct.gfs2_holder** %4, align 8
  %38 = getelementptr inbounds %struct.gfs2_holder, %struct.gfs2_holder* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @hflags2str(i8* %33, i32 %36, i32 %39)
  %41 = load %struct.gfs2_holder*, %struct.gfs2_holder** %4, align 8
  %42 = getelementptr inbounds %struct.gfs2_holder, %struct.gfs2_holder* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.gfs2_holder*, %struct.gfs2_holder** %4, align 8
  %45 = getelementptr inbounds %struct.gfs2_holder, %struct.gfs2_holder* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %27
  %49 = load %struct.gfs2_holder*, %struct.gfs2_holder** %4, align 8
  %50 = getelementptr inbounds %struct.gfs2_holder, %struct.gfs2_holder* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i64 @pid_nr(i64 %51)
  br label %54

53:                                               ; preds = %27
  br label %54

54:                                               ; preds = %53, %48
  %55 = phi i64 [ %52, %48 ], [ -1, %53 ]
  %56 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %57 = icmp ne %struct.task_struct* %56, null
  br i1 %57, label %58, label %62

58:                                               ; preds = %54
  %59 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %60 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  br label %63

62:                                               ; preds = %54
  br label %63

63:                                               ; preds = %62, %58
  %64 = phi i8* [ %61, %58 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), %62 ]
  %65 = call i32 @gfs2_print_dbg(%struct.seq_file* %28, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %40, i32 %43, i64 %55, i8* %64, i8* %12)
  %66 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %66)
  ret i32 0
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @sprint_symbol(i8*, i32) #2

declare dso_local %struct.task_struct* @pid_task(i64, i32) #2

declare dso_local i32 @gfs2_print_dbg(%struct.seq_file*, i8*, i32, i32, i32, i64, i8*, i8*) #2

declare dso_local i32 @state2str(i32) #2

declare dso_local i32 @hflags2str(i8*, i32, i32) #2

declare dso_local i64 @pid_nr(i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
