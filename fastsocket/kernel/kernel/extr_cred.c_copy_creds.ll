; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_cred.c_copy_creds.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_cred.c_copy_creds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.cred*, %struct.cred*, i32*, i32 }
%struct.cred = type { %struct.TYPE_2__*, %struct.thread_group_cred*, i32*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.thread_group_cred = type { i32, i32*, i32, i32 }

@CLONE_THREAD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"share_creds(%p{%d,%d})\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@CLONE_NEWUSER = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @copy_creds(%struct.task_struct* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.cred*, align 8
  %7 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %9 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %8, i32 0, i32 3
  %10 = call i32 @mutex_init(i32* %9)
  %11 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %12 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %11, i32 0, i32 2
  store i32* null, i32** %12, align 8
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* @CLONE_THREAD, align 8
  %15 = and i64 %13, %14
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %53

17:                                               ; preds = %2
  %18 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %19 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %18, i32 0, i32 1
  %20 = load %struct.cred*, %struct.cred** %19, align 8
  %21 = call i8* @get_cred(%struct.cred* %20)
  %22 = bitcast i8* %21 to %struct.cred*
  %23 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %24 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %23, i32 0, i32 0
  store %struct.cred* %22, %struct.cred** %24, align 8
  %25 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %26 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %25, i32 0, i32 1
  %27 = load %struct.cred*, %struct.cred** %26, align 8
  %28 = call i8* @get_cred(%struct.cred* %27)
  %29 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %30 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %29, i32 0, i32 1
  %31 = load %struct.cred*, %struct.cred** %30, align 8
  %32 = call i32 @alter_cred_subscribers(%struct.cred* %31, i32 2)
  %33 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %34 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %33, i32 0, i32 1
  %35 = load %struct.cred*, %struct.cred** %34, align 8
  %36 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %37 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %36, i32 0, i32 1
  %38 = load %struct.cred*, %struct.cred** %37, align 8
  %39 = getelementptr inbounds %struct.cred, %struct.cred* %38, i32 0, i32 3
  %40 = call i32 @atomic_read(i32* %39)
  %41 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %42 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %41, i32 0, i32 1
  %43 = load %struct.cred*, %struct.cred** %42, align 8
  %44 = call i32 @read_cred_subscribers(%struct.cred* %43)
  %45 = call i32 @kdebug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), %struct.cred* %35, i32 %40, i32 %44)
  %46 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %47 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %46, i32 0, i32 1
  %48 = load %struct.cred*, %struct.cred** %47, align 8
  %49 = getelementptr inbounds %struct.cred, %struct.cred* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = call i32 @atomic_inc(i32* %51)
  store i32 0, i32* %3, align 4
  br label %93

53:                                               ; preds = %2
  %54 = call %struct.cred* (...) @prepare_creds()
  store %struct.cred* %54, %struct.cred** %6, align 8
  %55 = load %struct.cred*, %struct.cred** %6, align 8
  %56 = icmp ne %struct.cred* %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %53
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  br label %93

60:                                               ; preds = %53
  %61 = load i64, i64* %5, align 8
  %62 = load i64, i64* @CLONE_NEWUSER, align 8
  %63 = and i64 %61, %62
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %60
  %66 = load %struct.cred*, %struct.cred** %6, align 8
  %67 = call i32 @create_user_ns(%struct.cred* %66)
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %7, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  br label %89

71:                                               ; preds = %65
  br label %72

72:                                               ; preds = %71, %60
  %73 = load %struct.cred*, %struct.cred** %6, align 8
  %74 = getelementptr inbounds %struct.cred, %struct.cred* %73, i32 0, i32 0
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = call i32 @atomic_inc(i32* %76)
  %78 = load %struct.cred*, %struct.cred** %6, align 8
  %79 = call i8* @get_cred(%struct.cred* %78)
  %80 = bitcast i8* %79 to %struct.cred*
  %81 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %82 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %81, i32 0, i32 0
  store %struct.cred* %80, %struct.cred** %82, align 8
  %83 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %84 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %83, i32 0, i32 1
  store %struct.cred* %80, %struct.cred** %84, align 8
  %85 = load %struct.cred*, %struct.cred** %6, align 8
  %86 = call i32 @alter_cred_subscribers(%struct.cred* %85, i32 2)
  %87 = load %struct.cred*, %struct.cred** %6, align 8
  %88 = call i32 @validate_creds(%struct.cred* %87)
  store i32 0, i32* %3, align 4
  br label %93

89:                                               ; preds = %70
  %90 = load %struct.cred*, %struct.cred** %6, align 8
  %91 = call i32 @put_cred(%struct.cred* %90)
  %92 = load i32, i32* %7, align 4
  store i32 %92, i32* %3, align 4
  br label %93

93:                                               ; preds = %89, %72, %57, %17
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i8* @get_cred(%struct.cred*) #1

declare dso_local i32 @alter_cred_subscribers(%struct.cred*, i32) #1

declare dso_local i32 @kdebug(i8*, %struct.cred*, i32, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @read_cred_subscribers(%struct.cred*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local %struct.cred* @prepare_creds(...) #1

declare dso_local i32 @create_user_ns(%struct.cred*) #1

declare dso_local i32 @validate_creds(%struct.cred*) #1

declare dso_local i32 @put_cred(%struct.cred*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
