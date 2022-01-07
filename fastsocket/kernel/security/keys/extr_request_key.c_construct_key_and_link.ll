; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/keys/extr_request_key.c_construct_key_and_link.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/keys/extr_request_key.c_construct_key_and_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key_type = type { i32 }
%struct.key = type { i32 }
%struct.key_user = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"cons failed\00", align 1
@EINPROGRESS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c" = key %d\00", align 1
@key_negative_timeout = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c" = %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.key* (%struct.key_type*, i8*, i8*, i64, i8*, %struct.key*, i64)* @construct_key_and_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.key* @construct_key_and_link(%struct.key_type* %0, i8* %1, i8* %2, i64 %3, i8* %4, %struct.key* %5, i64 %6) #0 {
  %8 = alloca %struct.key*, align 8
  %9 = alloca %struct.key_type*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.key*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.key_user*, align 8
  %17 = alloca %struct.key*, align 8
  %18 = alloca i32, align 4
  store %struct.key_type* %0, %struct.key_type** %9, align 8
  store i8* %1, i8** %10, align 8
  store i8* %2, i8** %11, align 8
  store i64 %3, i64* %12, align 8
  store i8* %4, i8** %13, align 8
  store %struct.key* %5, %struct.key** %14, align 8
  store i64 %6, i64* %15, align 8
  %19 = call i32 @kenter(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %20 = call i32 (...) @current_fsuid()
  %21 = call i32 (...) @current_user_ns()
  %22 = call %struct.key_user* @key_user_lookup(i32 %20, i32 %21)
  store %struct.key_user* %22, %struct.key_user** %16, align 8
  %23 = load %struct.key_user*, %struct.key_user** %16, align 8
  %24 = icmp ne %struct.key_user* %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %7
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  %28 = call %struct.key* @ERR_PTR(i32 %27)
  store %struct.key* %28, %struct.key** %8, align 8
  br label %81

29:                                               ; preds = %7
  %30 = call i32 @construct_get_dest_keyring(%struct.key** %14)
  %31 = load %struct.key_type*, %struct.key_type** %9, align 8
  %32 = load i8*, i8** %10, align 8
  %33 = load %struct.key*, %struct.key** %14, align 8
  %34 = load i64, i64* %15, align 8
  %35 = load %struct.key_user*, %struct.key_user** %16, align 8
  %36 = call i32 @construct_alloc_key(%struct.key_type* %31, i8* %32, %struct.key* %33, i64 %34, %struct.key_user* %35, %struct.key** %17)
  store i32 %36, i32* %18, align 4
  %37 = load %struct.key_user*, %struct.key_user** %16, align 8
  %38 = call i32 @key_user_put(%struct.key_user* %37)
  %39 = load i32, i32* %18, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %53

41:                                               ; preds = %29
  %42 = load %struct.key*, %struct.key** %17, align 8
  %43 = load i8*, i8** %11, align 8
  %44 = load i64, i64* %12, align 8
  %45 = load i8*, i8** %13, align 8
  %46 = load %struct.key*, %struct.key** %14, align 8
  %47 = call i32 @construct_key(%struct.key* %42, i8* %43, i64 %44, i8* %45, %struct.key* %46)
  store i32 %47, i32* %18, align 4
  %48 = load i32, i32* %18, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %41
  %51 = call i32 @kdebug(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  br label %68

52:                                               ; preds = %41
  br label %61

53:                                               ; preds = %29
  %54 = load i32, i32* %18, align 4
  %55 = load i32, i32* @EINPROGRESS, align 4
  %56 = sub nsw i32 0, %55
  %57 = icmp eq i32 %54, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  store i32 0, i32* %18, align 4
  br label %60

59:                                               ; preds = %53
  br label %74

60:                                               ; preds = %58
  br label %61

61:                                               ; preds = %60, %52
  %62 = load %struct.key*, %struct.key** %14, align 8
  %63 = call i32 @key_put(%struct.key* %62)
  %64 = load %struct.key*, %struct.key** %17, align 8
  %65 = call i32 @key_serial(%struct.key* %64)
  %66 = call i32 @kleave(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %65)
  %67 = load %struct.key*, %struct.key** %17, align 8
  store %struct.key* %67, %struct.key** %8, align 8
  br label %81

68:                                               ; preds = %50
  %69 = load %struct.key*, %struct.key** %17, align 8
  %70 = load i32, i32* @key_negative_timeout, align 4
  %71 = call i32 @key_negate_and_link(%struct.key* %69, i32 %70, i32* null, i32* null)
  %72 = load %struct.key*, %struct.key** %17, align 8
  %73 = call i32 @key_put(%struct.key* %72)
  br label %74

74:                                               ; preds = %68, %59
  %75 = load %struct.key*, %struct.key** %14, align 8
  %76 = call i32 @key_put(%struct.key* %75)
  %77 = load i32, i32* %18, align 4
  %78 = call i32 @kleave(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %77)
  %79 = load i32, i32* %18, align 4
  %80 = call %struct.key* @ERR_PTR(i32 %79)
  store %struct.key* %80, %struct.key** %8, align 8
  br label %81

81:                                               ; preds = %74, %61, %25
  %82 = load %struct.key*, %struct.key** %8, align 8
  ret %struct.key* %82
}

declare dso_local i32 @kenter(i8*) #1

declare dso_local %struct.key_user* @key_user_lookup(i32, i32) #1

declare dso_local i32 @current_fsuid(...) #1

declare dso_local i32 @current_user_ns(...) #1

declare dso_local %struct.key* @ERR_PTR(i32) #1

declare dso_local i32 @construct_get_dest_keyring(%struct.key**) #1

declare dso_local i32 @construct_alloc_key(%struct.key_type*, i8*, %struct.key*, i64, %struct.key_user*, %struct.key**) #1

declare dso_local i32 @key_user_put(%struct.key_user*) #1

declare dso_local i32 @construct_key(%struct.key*, i8*, i64, i8*, %struct.key*) #1

declare dso_local i32 @kdebug(i8*) #1

declare dso_local i32 @key_put(%struct.key*) #1

declare dso_local i32 @kleave(i8*, i32) #1

declare dso_local i32 @key_serial(%struct.key*) #1

declare dso_local i32 @key_negate_and_link(%struct.key*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
