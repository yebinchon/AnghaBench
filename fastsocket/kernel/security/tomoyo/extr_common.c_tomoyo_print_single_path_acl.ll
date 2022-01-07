; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/tomoyo/extr_common.c_tomoyo_print_single_path_acl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/tomoyo/extr_common.c_tomoyo_print_single_path_acl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tomoyo_io_buffer = type { i32, i32 }
%struct.tomoyo_single_path_acl_record = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@TOMOYO_MAX_SINGLE_PATH_OPERATION = common dso_local global i32 0, align 4
@TOMOYO_TYPE_READ_ACL = common dso_local global i32 0, align 4
@TOMOYO_TYPE_WRITE_ACL = common dso_local global i32 0, align 4
@TOMOYO_TYPE_READ_WRITE_ACL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"allow_%s %s%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tomoyo_io_buffer*, %struct.tomoyo_single_path_acl_record*)* @tomoyo_print_single_path_acl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tomoyo_print_single_path_acl(%struct.tomoyo_io_buffer* %0, %struct.tomoyo_single_path_acl_record* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tomoyo_io_buffer*, align 8
  %5 = alloca %struct.tomoyo_single_path_acl_record*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.tomoyo_io_buffer* %0, %struct.tomoyo_io_buffer** %4, align 8
  store %struct.tomoyo_single_path_acl_record* %1, %struct.tomoyo_single_path_acl_record** %5, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  %12 = load %struct.tomoyo_single_path_acl_record*, %struct.tomoyo_single_path_acl_record** %5, align 8
  %13 = getelementptr inbounds %struct.tomoyo_single_path_acl_record, %struct.tomoyo_single_path_acl_record* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %10, align 4
  %15 = load %struct.tomoyo_single_path_acl_record*, %struct.tomoyo_single_path_acl_record** %5, align 8
  %16 = getelementptr inbounds %struct.tomoyo_single_path_acl_record, %struct.tomoyo_single_path_acl_record* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %9, align 8
  %20 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %4, align 8
  %21 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %7, align 4
  br label %23

23:                                               ; preds = %63, %2
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @TOMOYO_MAX_SINGLE_PATH_OPERATION, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %66

27:                                               ; preds = %23
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %7, align 4
  %30 = shl i32 1, %29
  %31 = and i32 %28, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %27
  br label %63

34:                                               ; preds = %27
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @TOMOYO_TYPE_READ_ACL, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @TOMOYO_TYPE_WRITE_ACL, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %38, %34
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* @TOMOYO_TYPE_READ_WRITE_ACL, align 4
  %45 = shl i32 1, %44
  %46 = and i32 %43, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  br label %63

49:                                               ; preds = %42, %38
  %50 = load i32, i32* %7, align 4
  %51 = call i8* @tomoyo_sp2keyword(i32 %50)
  store i8* %51, i8** %11, align 8
  %52 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %4, align 8
  %53 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %6, align 4
  %55 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %4, align 8
  %56 = load i8*, i8** %11, align 8
  %57 = load i8*, i8** %8, align 8
  %58 = load i8*, i8** %9, align 8
  %59 = call i32 @tomoyo_io_printf(%struct.tomoyo_io_buffer* %55, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %56, i8* %57, i8* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %49
  br label %69

62:                                               ; preds = %49
  br label %63

63:                                               ; preds = %62, %48, %33
  %64 = load i32, i32* %7, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %7, align 4
  br label %23

66:                                               ; preds = %23
  %67 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %4, align 8
  %68 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %67, i32 0, i32 0
  store i32 0, i32* %68, align 4
  store i32 1, i32* %3, align 4
  br label %76

69:                                               ; preds = %61
  %70 = load i32, i32* %7, align 4
  %71 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %4, align 8
  %72 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 4
  %73 = load i32, i32* %6, align 4
  %74 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %4, align 8
  %75 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 4
  store i32 0, i32* %3, align 4
  br label %76

76:                                               ; preds = %69, %66
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i8* @tomoyo_sp2keyword(i32) #1

declare dso_local i32 @tomoyo_io_printf(%struct.tomoyo_io_buffer*, i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
