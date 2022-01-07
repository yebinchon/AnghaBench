; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_wext-priv.c_ioctl_private_iw_point.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_wext-priv.c_ioctl_private_iw_point.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iw_point = type { i32, i32 }
%struct.iw_priv_args = type { i32, i32 }
%union.iwreq_data = type { i32 }
%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }

@EFAULT = common dso_local global i32 0, align 4
@IW_PRIV_SIZE_MASK = common dso_local global i32 0, align 4
@E2BIG = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IW_PRIV_SIZE_FIXED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iw_point*, i32, %struct.iw_priv_args*, i32 (%struct.net_device*, %struct.iw_request_info*, %union.iwreq_data*, i8*)*, %struct.net_device*, %struct.iw_request_info*, i32)* @ioctl_private_iw_point to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ioctl_private_iw_point(%struct.iw_point* %0, i32 %1, %struct.iw_priv_args* %2, i32 (%struct.net_device*, %struct.iw_request_info*, %union.iwreq_data*, i8*)* %3, %struct.net_device* %4, %struct.iw_request_info* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.iw_point*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.iw_priv_args*, align 8
  %12 = alloca i32 (%struct.net_device*, %struct.iw_request_info*, %union.iwreq_data*, i8*)*, align 8
  %13 = alloca %struct.net_device*, align 8
  %14 = alloca %struct.iw_request_info*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  store %struct.iw_point* %0, %struct.iw_point** %9, align 8
  store i32 %1, i32* %10, align 4
  store %struct.iw_priv_args* %2, %struct.iw_priv_args** %11, align 8
  store i32 (%struct.net_device*, %struct.iw_request_info*, %union.iwreq_data*, i8*)* %3, i32 (%struct.net_device*, %struct.iw_request_info*, %union.iwreq_data*, i8*)** %12, align 8
  store %struct.net_device* %4, %struct.net_device** %13, align 8
  store %struct.iw_request_info* %5, %struct.iw_request_info** %14, align 8
  store i32 %6, i32* %15, align 4
  %18 = load i32, i32* %10, align 4
  %19 = call i64 @IW_IS_SET(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %48

21:                                               ; preds = %7
  %22 = load %struct.iw_point*, %struct.iw_point** %9, align 8
  %23 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %34, label %26

26:                                               ; preds = %21
  %27 = load %struct.iw_point*, %struct.iw_point** %9, align 8
  %28 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i32, i32* @EFAULT, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %8, align 4
  br label %131

34:                                               ; preds = %26, %21
  %35 = load %struct.iw_point*, %struct.iw_point** %9, align 8
  %36 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.iw_priv_args*, %struct.iw_priv_args** %11, align 8
  %39 = getelementptr inbounds %struct.iw_priv_args, %struct.iw_priv_args* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @IW_PRIV_SIZE_MASK, align 4
  %42 = and i32 %40, %41
  %43 = icmp sgt i32 %37, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %34
  %45 = load i32, i32* @E2BIG, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %8, align 4
  br label %131

47:                                               ; preds = %34
  br label %57

48:                                               ; preds = %7
  %49 = load %struct.iw_point*, %struct.iw_point** %9, align 8
  %50 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %48
  %54 = load i32, i32* @EFAULT, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %8, align 4
  br label %131

56:                                               ; preds = %48
  br label %57

57:                                               ; preds = %56, %47
  %58 = load i32, i32* %15, align 4
  %59 = load i32, i32* @GFP_KERNEL, align 4
  %60 = call i8* @kzalloc(i32 %58, i32 %59)
  store i8* %60, i8** %16, align 8
  %61 = load i8*, i8** %16, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %66, label %63

63:                                               ; preds = %57
  %64 = load i32, i32* @ENOMEM, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %8, align 4
  br label %131

66:                                               ; preds = %57
  %67 = load i32, i32* %10, align 4
  %68 = call i64 @IW_IS_SET(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %87

70:                                               ; preds = %66
  %71 = load %struct.iw_point*, %struct.iw_point** %9, align 8
  %72 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %87

75:                                               ; preds = %70
  %76 = load i8*, i8** %16, align 8
  %77 = load %struct.iw_point*, %struct.iw_point** %9, align 8
  %78 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %15, align 4
  %81 = call i64 @copy_from_user(i8* %76, i32 %79, i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %75
  %84 = load i32, i32* @EFAULT, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %17, align 4
  br label %127

86:                                               ; preds = %75
  br label %87

87:                                               ; preds = %86, %70, %66
  %88 = load i32 (%struct.net_device*, %struct.iw_request_info*, %union.iwreq_data*, i8*)*, i32 (%struct.net_device*, %struct.iw_request_info*, %union.iwreq_data*, i8*)** %12, align 8
  %89 = load %struct.net_device*, %struct.net_device** %13, align 8
  %90 = load %struct.iw_request_info*, %struct.iw_request_info** %14, align 8
  %91 = load %struct.iw_point*, %struct.iw_point** %9, align 8
  %92 = bitcast %struct.iw_point* %91 to %union.iwreq_data*
  %93 = load i8*, i8** %16, align 8
  %94 = call i32 %88(%struct.net_device* %89, %struct.iw_request_info* %90, %union.iwreq_data* %92, i8* %93)
  store i32 %94, i32* %17, align 4
  %95 = load i32, i32* %17, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %126, label %97

97:                                               ; preds = %87
  %98 = load i32, i32* %10, align 4
  %99 = call i64 @IW_IS_GET(i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %126

101:                                              ; preds = %97
  %102 = load %struct.iw_priv_args*, %struct.iw_priv_args** %11, align 8
  %103 = getelementptr inbounds %struct.iw_priv_args, %struct.iw_priv_args* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @IW_PRIV_SIZE_FIXED, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %114, label %108

108:                                              ; preds = %101
  %109 = load %struct.iw_priv_args*, %struct.iw_priv_args** %11, align 8
  %110 = getelementptr inbounds %struct.iw_priv_args, %struct.iw_priv_args* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.iw_point*, %struct.iw_point** %9, align 8
  %113 = call i32 @adjust_priv_size(i32 %111, %struct.iw_point* %112)
  store i32 %113, i32* %15, align 4
  br label %114

114:                                              ; preds = %108, %101
  %115 = load %struct.iw_point*, %struct.iw_point** %9, align 8
  %116 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load i8*, i8** %16, align 8
  %119 = load i32, i32* %15, align 4
  %120 = call i64 @copy_to_user(i32 %117, i8* %118, i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %114
  %123 = load i32, i32* @EFAULT, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %17, align 4
  br label %125

125:                                              ; preds = %122, %114
  br label %126

126:                                              ; preds = %125, %97, %87
  br label %127

127:                                              ; preds = %126, %83
  %128 = load i8*, i8** %16, align 8
  %129 = call i32 @kfree(i8* %128)
  %130 = load i32, i32* %17, align 4
  store i32 %130, i32* %8, align 4
  br label %131

131:                                              ; preds = %127, %63, %53, %44, %31
  %132 = load i32, i32* %8, align 4
  ret i32 %132
}

declare dso_local i64 @IW_IS_SET(i32) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i64 @copy_from_user(i8*, i32, i32) #1

declare dso_local i64 @IW_IS_GET(i32) #1

declare dso_local i32 @adjust_priv_size(i32, %struct.iw_point*) #1

declare dso_local i64 @copy_to_user(i32, i8*, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
