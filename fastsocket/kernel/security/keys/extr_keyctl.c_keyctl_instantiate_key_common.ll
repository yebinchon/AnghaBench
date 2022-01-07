; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/keys/extr_keyctl.c_keyctl_instantiate_key_common.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/keys/extr_keyctl.c_keyctl_instantiate_key_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iovec = type { i32 }
%struct.cred = type { %struct.key* }
%struct.key = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.request_key_auth* }
%struct.request_key_auth = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [11 x i8] c"%d,,%zu,%d\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@EPERM = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @keyctl_instantiate_key_common(i64 %0, %struct.iovec* %1, i32 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.iovec*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.cred*, align 8
  %12 = alloca %struct.request_key_auth*, align 8
  %13 = alloca %struct.key*, align 8
  %14 = alloca %struct.key*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store %struct.iovec* %1, %struct.iovec** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %18 = call %struct.cred* (...) @current_cred()
  store %struct.cred* %18, %struct.cred** %11, align 8
  store i32 0, i32* %17, align 4
  %19 = load i64, i64* %6, align 8
  %20 = load i64, i64* %9, align 8
  %21 = load i64, i64* %10, align 8
  %22 = call i32 @kenter(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i64 %19, i64 %20, i64 %21)
  %23 = load i64, i64* @EINVAL, align 8
  %24 = sub nsw i64 0, %23
  store i64 %24, i64* %16, align 8
  %25 = load i64, i64* %9, align 8
  %26 = icmp ugt i64 %25, 1048575
  br i1 %26, label %27, label %28

27:                                               ; preds = %5
  br label %115

28:                                               ; preds = %5
  %29 = load i64, i64* @EPERM, align 8
  %30 = sub nsw i64 0, %29
  store i64 %30, i64* %16, align 8
  %31 = load %struct.cred*, %struct.cred** %11, align 8
  %32 = getelementptr inbounds %struct.cred, %struct.cred* %31, i32 0, i32 0
  %33 = load %struct.key*, %struct.key** %32, align 8
  store %struct.key* %33, %struct.key** %13, align 8
  %34 = load %struct.key*, %struct.key** %13, align 8
  %35 = icmp ne %struct.key* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %28
  br label %115

37:                                               ; preds = %28
  %38 = load %struct.key*, %struct.key** %13, align 8
  %39 = getelementptr inbounds %struct.key, %struct.key* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load %struct.request_key_auth*, %struct.request_key_auth** %40, align 8
  store %struct.request_key_auth* %41, %struct.request_key_auth** %12, align 8
  %42 = load %struct.request_key_auth*, %struct.request_key_auth** %12, align 8
  %43 = getelementptr inbounds %struct.request_key_auth, %struct.request_key_auth* %42, i32 0, i32 0
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %6, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %37
  br label %115

50:                                               ; preds = %37
  store i8* null, i8** %15, align 8
  %51 = load %struct.iovec*, %struct.iovec** %7, align 8
  %52 = icmp ne %struct.iovec* %51, null
  br i1 %52, label %53, label %82

53:                                               ; preds = %50
  %54 = load i64, i64* @ENOMEM, align 8
  %55 = sub nsw i64 0, %54
  store i64 %55, i64* %16, align 8
  %56 = load i64, i64* %9, align 8
  %57 = load i32, i32* @GFP_KERNEL, align 4
  %58 = call i8* @kmalloc(i64 %56, i32 %57)
  store i8* %58, i8** %15, align 8
  %59 = load i8*, i8** %15, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %73, label %61

61:                                               ; preds = %53
  %62 = load i64, i64* %9, align 8
  %63 = load i64, i64* @PAGE_SIZE, align 8
  %64 = icmp ule i64 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  br label %115

66:                                               ; preds = %61
  store i32 1, i32* %17, align 4
  %67 = load i64, i64* %9, align 8
  %68 = call i8* @vmalloc(i64 %67)
  store i8* %68, i8** %15, align 8
  %69 = load i8*, i8** %15, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %72, label %71

71:                                               ; preds = %66
  br label %115

72:                                               ; preds = %66
  br label %73

73:                                               ; preds = %72, %53
  %74 = load i8*, i8** %15, align 8
  %75 = load %struct.iovec*, %struct.iovec** %7, align 8
  %76 = load i32, i32* %8, align 4
  %77 = call i64 @copy_from_user_iovec(i8* %74, %struct.iovec* %75, i32 %76)
  store i64 %77, i64* %16, align 8
  %78 = load i64, i64* %16, align 8
  %79 = icmp slt i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %73
  br label %105

81:                                               ; preds = %73
  br label %82

82:                                               ; preds = %81, %50
  %83 = load i64, i64* %10, align 8
  %84 = load %struct.request_key_auth*, %struct.request_key_auth** %12, align 8
  %85 = call i64 @get_instantiation_keyring(i64 %83, %struct.request_key_auth* %84, %struct.key** %14)
  store i64 %85, i64* %16, align 8
  %86 = load i64, i64* %16, align 8
  %87 = icmp slt i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %82
  br label %105

89:                                               ; preds = %82
  %90 = load %struct.request_key_auth*, %struct.request_key_auth** %12, align 8
  %91 = getelementptr inbounds %struct.request_key_auth, %struct.request_key_auth* %90, i32 0, i32 0
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %91, align 8
  %93 = load i8*, i8** %15, align 8
  %94 = load i64, i64* %9, align 8
  %95 = load %struct.key*, %struct.key** %14, align 8
  %96 = load %struct.key*, %struct.key** %13, align 8
  %97 = call i64 @key_instantiate_and_link(%struct.TYPE_4__* %92, i8* %93, i64 %94, %struct.key* %95, %struct.key* %96)
  store i64 %97, i64* %16, align 8
  %98 = load %struct.key*, %struct.key** %14, align 8
  %99 = call i32 @key_put(%struct.key* %98)
  %100 = load i64, i64* %16, align 8
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %89
  %103 = call i32 @keyctl_change_reqkey_auth(i32* null)
  br label %104

104:                                              ; preds = %102, %89
  br label %105

105:                                              ; preds = %104, %88, %80
  %106 = load i32, i32* %17, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %111, label %108

108:                                              ; preds = %105
  %109 = load i8*, i8** %15, align 8
  %110 = call i32 @kfree(i8* %109)
  br label %114

111:                                              ; preds = %105
  %112 = load i8*, i8** %15, align 8
  %113 = call i32 @vfree(i8* %112)
  br label %114

114:                                              ; preds = %111, %108
  br label %115

115:                                              ; preds = %114, %71, %65, %49, %36, %27
  %116 = load i64, i64* %16, align 8
  ret i64 %116
}

declare dso_local %struct.cred* @current_cred(...) #1

declare dso_local i32 @kenter(i8*, i64, i64, i64) #1

declare dso_local i8* @kmalloc(i64, i32) #1

declare dso_local i8* @vmalloc(i64) #1

declare dso_local i64 @copy_from_user_iovec(i8*, %struct.iovec*, i32) #1

declare dso_local i64 @get_instantiation_keyring(i64, %struct.request_key_auth*, %struct.key**) #1

declare dso_local i64 @key_instantiate_and_link(%struct.TYPE_4__*, i8*, i64, %struct.key*, %struct.key*) #1

declare dso_local i32 @key_put(%struct.key*) #1

declare dso_local i32 @keyctl_change_reqkey_auth(i32*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @vfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
