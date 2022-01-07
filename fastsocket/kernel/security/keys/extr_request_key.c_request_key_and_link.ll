; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/keys/extr_request_key.c_request_key_and_link.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/keys/extr_request_key.c_request_key_and_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key_type = type { i32, i32 }
%struct.key = type { i32 }
%struct.cred = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"%s,%s,%p,%zu,%p,%p,%lx\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@ENOKEY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c" = %p\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.key* @request_key_and_link(%struct.key_type* %0, i8* %1, i8* %2, i64 %3, i8* %4, %struct.key* %5, i64 %6) #0 {
  %8 = alloca %struct.key_type*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.key*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.cred*, align 8
  %16 = alloca %struct.key*, align 8
  %17 = alloca i32, align 4
  store %struct.key_type* %0, %struct.key_type** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store i8* %4, i8** %12, align 8
  store %struct.key* %5, %struct.key** %13, align 8
  store i64 %6, i64* %14, align 8
  %18 = call %struct.cred* (...) @current_cred()
  store %struct.cred* %18, %struct.cred** %15, align 8
  %19 = load %struct.key_type*, %struct.key_type** %8, align 8
  %20 = getelementptr inbounds %struct.key_type, %struct.key_type* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i8*, i8** %9, align 8
  %23 = load i8*, i8** %10, align 8
  %24 = load i64, i64* %11, align 8
  %25 = load i8*, i8** %12, align 8
  %26 = load %struct.key*, %struct.key** %13, align 8
  %27 = load i64, i64* %14, align 8
  %28 = call i32 @kenter(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %21, i8* %22, i8* %23, i64 %24, i8* %25, %struct.key* %26, i64 %27)
  %29 = load %struct.key_type*, %struct.key_type** %8, align 8
  %30 = load i8*, i8** %9, align 8
  %31 = load %struct.key_type*, %struct.key_type** %8, align 8
  %32 = getelementptr inbounds %struct.key_type, %struct.key_type* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.cred*, %struct.cred** %15, align 8
  %35 = call i32 @search_process_keyrings(%struct.key_type* %29, i8* %30, i32 %33, %struct.cred* %34)
  store i32 %35, i32* %17, align 4
  %36 = load i32, i32* %17, align 4
  %37 = call i32 @IS_ERR(i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %52, label %39

39:                                               ; preds = %7
  %40 = load i32, i32* %17, align 4
  %41 = call %struct.key* @key_ref_to_ptr(i32 %40)
  store %struct.key* %41, %struct.key** %16, align 8
  %42 = load %struct.key*, %struct.key** %13, align 8
  %43 = icmp ne %struct.key* %42, null
  br i1 %43, label %44, label %51

44:                                               ; preds = %39
  %45 = call i32 @construct_get_dest_keyring(%struct.key** %13)
  %46 = load %struct.key*, %struct.key** %13, align 8
  %47 = load %struct.key*, %struct.key** %16, align 8
  %48 = call i32 @key_link(%struct.key* %46, %struct.key* %47)
  %49 = load %struct.key*, %struct.key** %13, align 8
  %50 = call i32 @key_put(%struct.key* %49)
  br label %51

51:                                               ; preds = %44, %39
  br label %78

52:                                               ; preds = %7
  %53 = load i32, i32* %17, align 4
  %54 = call i32 @PTR_ERR(i32 %53)
  %55 = load i32, i32* @EAGAIN, align 4
  %56 = sub nsw i32 0, %55
  %57 = icmp ne i32 %54, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %52
  %59 = load i32, i32* %17, align 4
  %60 = call %struct.key* @ERR_CAST(i32 %59)
  store %struct.key* %60, %struct.key** %16, align 8
  br label %77

61:                                               ; preds = %52
  %62 = load i32, i32* @ENOKEY, align 4
  %63 = sub nsw i32 0, %62
  %64 = call %struct.key* @ERR_PTR(i32 %63)
  store %struct.key* %64, %struct.key** %16, align 8
  %65 = load i8*, i8** %10, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %68, label %67

67:                                               ; preds = %61
  br label %79

68:                                               ; preds = %61
  %69 = load %struct.key_type*, %struct.key_type** %8, align 8
  %70 = load i8*, i8** %9, align 8
  %71 = load i8*, i8** %10, align 8
  %72 = load i64, i64* %11, align 8
  %73 = load i8*, i8** %12, align 8
  %74 = load %struct.key*, %struct.key** %13, align 8
  %75 = load i64, i64* %14, align 8
  %76 = call %struct.key* @construct_key_and_link(%struct.key_type* %69, i8* %70, i8* %71, i64 %72, i8* %73, %struct.key* %74, i64 %75)
  store %struct.key* %76, %struct.key** %16, align 8
  br label %77

77:                                               ; preds = %68, %58
  br label %78

78:                                               ; preds = %77, %51
  br label %79

79:                                               ; preds = %78, %67
  %80 = load %struct.key*, %struct.key** %16, align 8
  %81 = call i32 @kleave(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), %struct.key* %80)
  %82 = load %struct.key*, %struct.key** %16, align 8
  ret %struct.key* %82
}

declare dso_local %struct.cred* @current_cred(...) #1

declare dso_local i32 @kenter(i8*, i32, i8*, i8*, i64, i8*, %struct.key*, i64) #1

declare dso_local i32 @search_process_keyrings(%struct.key_type*, i8*, i32, %struct.cred*) #1

declare dso_local i32 @IS_ERR(i32) #1

declare dso_local %struct.key* @key_ref_to_ptr(i32) #1

declare dso_local i32 @construct_get_dest_keyring(%struct.key**) #1

declare dso_local i32 @key_link(%struct.key*, %struct.key*) #1

declare dso_local i32 @key_put(%struct.key*) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local %struct.key* @ERR_CAST(i32) #1

declare dso_local %struct.key* @ERR_PTR(i32) #1

declare dso_local %struct.key* @construct_key_and_link(%struct.key_type*, i8*, i8*, i64, i8*, %struct.key*, i64) #1

declare dso_local i32 @kleave(i8*, %struct.key*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
