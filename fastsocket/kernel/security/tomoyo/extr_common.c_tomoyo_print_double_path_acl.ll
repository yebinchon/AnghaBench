; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/tomoyo/extr_common.c_tomoyo_print_double_path_acl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/tomoyo/extr_common.c_tomoyo_print_double_path_acl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tomoyo_io_buffer = type { i32, i32 }
%struct.tomoyo_double_path_acl_record = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i8* }
%struct.TYPE_3__ = type { i8* }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@TOMOYO_MAX_DOUBLE_PATH_OPERATION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"allow_%s %s%s %s%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tomoyo_io_buffer*, %struct.tomoyo_double_path_acl_record*)* @tomoyo_print_double_path_acl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tomoyo_print_double_path_acl(%struct.tomoyo_io_buffer* %0, %struct.tomoyo_double_path_acl_record* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tomoyo_io_buffer*, align 8
  %5 = alloca %struct.tomoyo_double_path_acl_record*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store %struct.tomoyo_io_buffer* %0, %struct.tomoyo_io_buffer** %4, align 8
  store %struct.tomoyo_double_path_acl_record* %1, %struct.tomoyo_double_path_acl_record** %5, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  %14 = load %struct.tomoyo_double_path_acl_record*, %struct.tomoyo_double_path_acl_record** %5, align 8
  %15 = getelementptr inbounds %struct.tomoyo_double_path_acl_record, %struct.tomoyo_double_path_acl_record* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %11, align 4
  %17 = load %struct.tomoyo_double_path_acl_record*, %struct.tomoyo_double_path_acl_record** %5, align 8
  %18 = getelementptr inbounds %struct.tomoyo_double_path_acl_record, %struct.tomoyo_double_path_acl_record* %17, i32 0, i32 2
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %9, align 8
  %22 = load %struct.tomoyo_double_path_acl_record*, %struct.tomoyo_double_path_acl_record** %5, align 8
  %23 = getelementptr inbounds %struct.tomoyo_double_path_acl_record, %struct.tomoyo_double_path_acl_record* %22, i32 0, i32 1
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %10, align 8
  %27 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %4, align 8
  %28 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %12, align 4
  br label %30

30:                                               ; preds = %57, %2
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* @TOMOYO_MAX_DOUBLE_PATH_OPERATION, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %60

34:                                               ; preds = %30
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* %12, align 4
  %37 = shl i32 1, %36
  %38 = and i32 %35, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %34
  br label %57

41:                                               ; preds = %34
  %42 = load i32, i32* %12, align 4
  %43 = call i8* @tomoyo_dp2keyword(i32 %42)
  store i8* %43, i8** %13, align 8
  %44 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %4, align 8
  %45 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %6, align 4
  %47 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %4, align 8
  %48 = load i8*, i8** %13, align 8
  %49 = load i8*, i8** %7, align 8
  %50 = load i8*, i8** %9, align 8
  %51 = load i8*, i8** %8, align 8
  %52 = load i8*, i8** %10, align 8
  %53 = call i32 @tomoyo_io_printf(%struct.tomoyo_io_buffer* %47, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %48, i8* %49, i8* %50, i8* %51, i8* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %41
  br label %63

56:                                               ; preds = %41
  br label %57

57:                                               ; preds = %56, %40
  %58 = load i32, i32* %12, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %12, align 4
  br label %30

60:                                               ; preds = %30
  %61 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %4, align 8
  %62 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %61, i32 0, i32 0
  store i32 0, i32* %62, align 4
  store i32 1, i32* %3, align 4
  br label %70

63:                                               ; preds = %55
  %64 = load i32, i32* %12, align 4
  %65 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %4, align 8
  %66 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 4
  %67 = load i32, i32* %6, align 4
  %68 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %4, align 8
  %69 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  store i32 0, i32* %3, align 4
  br label %70

70:                                               ; preds = %63, %60
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i8* @tomoyo_dp2keyword(i32) #1

declare dso_local i32 @tomoyo_io_printf(%struct.tomoyo_io_buffer*, i8*, i8*, i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
