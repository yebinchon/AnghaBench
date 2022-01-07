; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/auth_gss/extr_auth_gss.c_gss_fill_context.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/auth_gss/extr_auth_gss.c_gss_fill_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gss_cl_ctx = type { i32, i32, i32, i64 }
%struct.gss_api_mech = type { i32 }

@GSSD_MIN_TIMEOUT = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@EKEYEXPIRED = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"RPC:       gss_fill_context returning %ld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*, %struct.gss_cl_ctx*, %struct.gss_api_mech*)* @gss_fill_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @gss_fill_context(i8* %0, i8* %1, %struct.gss_cl_ctx* %2, %struct.gss_api_mech* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.gss_cl_ctx*, align 8
  %9 = alloca %struct.gss_api_mech*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.gss_cl_ctx* %2, %struct.gss_cl_ctx** %8, align 8
  store %struct.gss_api_mech* %3, %struct.gss_api_mech** %9, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = call i8* (i8*, i8*, ...) @simple_get_bytes(i8* %15, i8* %16, i32* %12, i64 4)
  store i8* %17, i8** %6, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = call i64 @IS_ERR(i8* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %4
  br label %130

22:                                               ; preds = %4
  %23 = load i32, i32* %12, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = load i32, i32* @GSSD_MIN_TIMEOUT, align 4
  store i32 %26, i32* %12, align 4
  br label %27

27:                                               ; preds = %25, %22
  %28 = load i64, i64* @jiffies, align 8
  %29 = load i32, i32* %12, align 4
  %30 = zext i32 %29 to i64
  %31 = load i64, i64* @HZ, align 8
  %32 = mul i64 %30, %31
  %33 = mul i64 %32, 3
  %34 = udiv i64 %33, 4
  %35 = add i64 %28, %34
  %36 = load %struct.gss_cl_ctx*, %struct.gss_cl_ctx** %8, align 8
  %37 = getelementptr inbounds %struct.gss_cl_ctx, %struct.gss_cl_ctx* %36, i32 0, i32 3
  store i64 %35, i64* %37, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = load i8*, i8** %7, align 8
  %40 = call i8* (i8*, i8*, ...) @simple_get_bytes(i8* %38, i8* %39, i32* %13, i64 4)
  store i8* %40, i8** %6, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = call i64 @IS_ERR(i8* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %27
  br label %130

45:                                               ; preds = %27
  %46 = load i32, i32* %13, align 4
  %47 = load %struct.gss_cl_ctx*, %struct.gss_cl_ctx** %8, align 8
  %48 = getelementptr inbounds %struct.gss_cl_ctx, %struct.gss_cl_ctx* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load %struct.gss_cl_ctx*, %struct.gss_cl_ctx** %8, align 8
  %50 = getelementptr inbounds %struct.gss_cl_ctx, %struct.gss_cl_ctx* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %76

53:                                               ; preds = %45
  %54 = load i8*, i8** %6, align 8
  %55 = load i8*, i8** %7, align 8
  %56 = call i8* (i8*, i8*, ...) @simple_get_bytes(i8* %54, i8* %55, i32* %14, i64 4)
  store i8* %56, i8** %6, align 8
  %57 = load i8*, i8** %6, align 8
  %58 = call i64 @IS_ERR(i8* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %75, label %60

60:                                               ; preds = %53
  %61 = load i32, i32* %14, align 4
  %62 = load i32, i32* @EKEYEXPIRED, align 4
  %63 = sub nsw i32 0, %62
  %64 = icmp eq i32 %61, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %60
  %66 = load i32, i32* @EKEYEXPIRED, align 4
  %67 = sub nsw i32 0, %66
  %68 = call i8* @ERR_PTR(i32 %67)
  br label %73

69:                                               ; preds = %60
  %70 = load i32, i32* @EACCES, align 4
  %71 = sub nsw i32 0, %70
  %72 = call i8* @ERR_PTR(i32 %71)
  br label %73

73:                                               ; preds = %69, %65
  %74 = phi i8* [ %68, %65 ], [ %72, %69 ]
  store i8* %74, i8** %6, align 8
  br label %75

75:                                               ; preds = %73, %53
  br label %130

76:                                               ; preds = %45
  %77 = load i8*, i8** %6, align 8
  %78 = load i8*, i8** %7, align 8
  %79 = load %struct.gss_cl_ctx*, %struct.gss_cl_ctx** %8, align 8
  %80 = getelementptr inbounds %struct.gss_cl_ctx, %struct.gss_cl_ctx* %79, i32 0, i32 2
  %81 = call i8* @simple_get_netobj(i8* %77, i8* %78, i32* %80)
  store i8* %81, i8** %6, align 8
  %82 = load i8*, i8** %6, align 8
  %83 = call i64 @IS_ERR(i8* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %76
  br label %130

86:                                               ; preds = %76
  %87 = load i8*, i8** %6, align 8
  %88 = load i8*, i8** %7, align 8
  %89 = call i8* (i8*, i8*, ...) @simple_get_bytes(i8* %87, i8* %88, i32* %11, i64 4)
  store i8* %89, i8** %6, align 8
  %90 = load i8*, i8** %6, align 8
  %91 = call i64 @IS_ERR(i8* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %86
  br label %130

94:                                               ; preds = %86
  %95 = load i8*, i8** %6, align 8
  %96 = load i32, i32* %11, align 4
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds i8, i8* %95, i64 %97
  store i8* %98, i8** %10, align 8
  %99 = load i8*, i8** %10, align 8
  %100 = load i8*, i8** %7, align 8
  %101 = icmp ugt i8* %99, %100
  br i1 %101, label %106, label %102

102:                                              ; preds = %94
  %103 = load i8*, i8** %10, align 8
  %104 = load i8*, i8** %6, align 8
  %105 = icmp ult i8* %103, %104
  br label %106

106:                                              ; preds = %102, %94
  %107 = phi i1 [ true, %94 ], [ %105, %102 ]
  %108 = zext i1 %107 to i32
  %109 = call i64 @unlikely(i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %106
  %112 = load i32, i32* @EFAULT, align 4
  %113 = sub nsw i32 0, %112
  %114 = call i8* @ERR_PTR(i32 %113)
  store i8* %114, i8** %6, align 8
  br label %130

115:                                              ; preds = %106
  %116 = load i8*, i8** %6, align 8
  %117 = load i32, i32* %11, align 4
  %118 = load %struct.gss_api_mech*, %struct.gss_api_mech** %9, align 8
  %119 = load %struct.gss_cl_ctx*, %struct.gss_cl_ctx** %8, align 8
  %120 = getelementptr inbounds %struct.gss_cl_ctx, %struct.gss_cl_ctx* %119, i32 0, i32 1
  %121 = load i32, i32* @GFP_NOFS, align 4
  %122 = call i32 @gss_import_sec_context(i8* %116, i32 %117, %struct.gss_api_mech* %118, i32* %120, i32 %121)
  store i32 %122, i32* %14, align 4
  %123 = load i32, i32* %14, align 4
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %115
  %126 = load i32, i32* %14, align 4
  %127 = call i8* @ERR_PTR(i32 %126)
  store i8* %127, i8** %6, align 8
  br label %130

128:                                              ; preds = %115
  %129 = load i8*, i8** %10, align 8
  store i8* %129, i8** %5, align 8
  br label %136

130:                                              ; preds = %125, %111, %93, %85, %75, %44, %21
  %131 = load i8*, i8** %6, align 8
  %132 = call i32 @PTR_ERR(i8* %131)
  %133 = sub nsw i32 0, %132
  %134 = call i32 @dprintk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %133)
  %135 = load i8*, i8** %6, align 8
  store i8* %135, i8** %5, align 8
  br label %136

136:                                              ; preds = %130, %128
  %137 = load i8*, i8** %5, align 8
  ret i8* %137
}

declare dso_local i8* @simple_get_bytes(i8*, i8*, ...) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i8* @ERR_PTR(i32) #1

declare dso_local i8* @simple_get_netobj(i8*, i8*, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @gss_import_sec_context(i8*, i32, %struct.gss_api_mech*, i32*, i32) #1

declare dso_local i32 @dprintk(i8*, i32) #1

declare dso_local i32 @PTR_ERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
