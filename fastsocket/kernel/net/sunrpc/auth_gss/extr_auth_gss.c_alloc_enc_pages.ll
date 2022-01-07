; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/auth_gss/extr_auth_gss.c_alloc_enc_pages.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/auth_gss/extr_auth_gss.c_alloc_enc_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_rqst = type { i32, {}*, i32**, %struct.xdr_buf }
%struct.xdr_buf = type { i32, i32 }

@PAGE_CACHE_SHIFT = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpc_rqst*)* @alloc_enc_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_enc_pages(%struct.rpc_rqst* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rpc_rqst*, align 8
  %4 = alloca %struct.xdr_buf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rpc_rqst* %0, %struct.rpc_rqst** %3, align 8
  %8 = load %struct.rpc_rqst*, %struct.rpc_rqst** %3, align 8
  %9 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %8, i32 0, i32 3
  store %struct.xdr_buf* %9, %struct.xdr_buf** %4, align 8
  %10 = load %struct.xdr_buf*, %struct.xdr_buf** %4, align 8
  %11 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load %struct.rpc_rqst*, %struct.rpc_rqst** %3, align 8
  %16 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %15, i32 0, i32 0
  store i32 0, i32* %16, align 8
  store i32 0, i32* %2, align 4
  br label %97

17:                                               ; preds = %1
  %18 = load %struct.xdr_buf*, %struct.xdr_buf** %4, align 8
  %19 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %22 = ashr i32 %20, %21
  store i32 %22, i32* %5, align 4
  %23 = load %struct.xdr_buf*, %struct.xdr_buf** %4, align 8
  %24 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.xdr_buf*, %struct.xdr_buf** %4, align 8
  %27 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %25, %28
  %30 = sub nsw i32 %29, 1
  %31 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %32 = ashr i32 %30, %31
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %5, align 4
  %35 = sub nsw i32 %33, %34
  %36 = add nsw i32 %35, 1
  %37 = add nsw i32 %36, 1
  %38 = load %struct.rpc_rqst*, %struct.rpc_rqst** %3, align 8
  %39 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.rpc_rqst*, %struct.rpc_rqst** %3, align 8
  %41 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = sext i32 %42 to i64
  %44 = mul i64 %43, 8
  %45 = trunc i64 %44 to i32
  %46 = load i32, i32* @GFP_NOFS, align 4
  %47 = call i32** @kmalloc(i32 %45, i32 %46)
  %48 = load %struct.rpc_rqst*, %struct.rpc_rqst** %3, align 8
  %49 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %48, i32 0, i32 2
  store i32** %47, i32*** %49, align 8
  %50 = load %struct.rpc_rqst*, %struct.rpc_rqst** %3, align 8
  %51 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %50, i32 0, i32 2
  %52 = load i32**, i32*** %51, align 8
  %53 = icmp ne i32** %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %17
  br label %94

55:                                               ; preds = %17
  store i32 0, i32* %7, align 4
  br label %56

56:                                               ; preds = %81, %55
  %57 = load i32, i32* %7, align 4
  %58 = load %struct.rpc_rqst*, %struct.rpc_rqst** %3, align 8
  %59 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp slt i32 %57, %60
  br i1 %61, label %62, label %84

62:                                               ; preds = %56
  %63 = load i32, i32* @GFP_NOFS, align 4
  %64 = call i32* @alloc_page(i32 %63)
  %65 = load %struct.rpc_rqst*, %struct.rpc_rqst** %3, align 8
  %66 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %65, i32 0, i32 2
  %67 = load i32**, i32*** %66, align 8
  %68 = load i32, i32* %7, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32*, i32** %67, i64 %69
  store i32* %64, i32** %70, align 8
  %71 = load %struct.rpc_rqst*, %struct.rpc_rqst** %3, align 8
  %72 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %71, i32 0, i32 2
  %73 = load i32**, i32*** %72, align 8
  %74 = load i32, i32* %7, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32*, i32** %73, i64 %75
  %77 = load i32*, i32** %76, align 8
  %78 = icmp eq i32* %77, null
  br i1 %78, label %79, label %80

79:                                               ; preds = %62
  br label %88

80:                                               ; preds = %62
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %7, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %7, align 4
  br label %56

84:                                               ; preds = %56
  %85 = load %struct.rpc_rqst*, %struct.rpc_rqst** %3, align 8
  %86 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %85, i32 0, i32 1
  %87 = bitcast {}** %86 to i32 (%struct.rpc_rqst*)**
  store i32 (%struct.rpc_rqst*)* @priv_release_snd_buf, i32 (%struct.rpc_rqst*)** %87, align 8
  store i32 0, i32* %2, align 4
  br label %97

88:                                               ; preds = %79
  %89 = load i32, i32* %7, align 4
  %90 = load %struct.rpc_rqst*, %struct.rpc_rqst** %3, align 8
  %91 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 8
  %92 = load %struct.rpc_rqst*, %struct.rpc_rqst** %3, align 8
  %93 = call i32 @priv_release_snd_buf(%struct.rpc_rqst* %92)
  br label %94

94:                                               ; preds = %88, %54
  %95 = load i32, i32* @EAGAIN, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %2, align 4
  br label %97

97:                                               ; preds = %94, %84, %14
  %98 = load i32, i32* %2, align 4
  ret i32 %98
}

declare dso_local i32** @kmalloc(i32, i32) #1

declare dso_local i32* @alloc_page(i32) #1

declare dso_local i32 @priv_release_snd_buf(%struct.rpc_rqst*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
