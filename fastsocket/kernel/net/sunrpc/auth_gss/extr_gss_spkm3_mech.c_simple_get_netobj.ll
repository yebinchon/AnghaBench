; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/auth_gss/extr_gss_spkm3_mech.c_simple_get_netobj.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/auth_gss/extr_gss_spkm3_mech.c_simple_get_netobj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_netobj = type { i32, i32* }

@EFAULT = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*, %struct.xdr_netobj*)* @simple_get_netobj to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @simple_get_netobj(i8* %0, i8* %1, %struct.xdr_netobj* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.xdr_netobj*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.xdr_netobj* %2, %struct.xdr_netobj** %7, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = call i8* @simple_get_bytes(i8* %10, i8* %11, i32* %9, i32 4)
  store i8* %12, i8** %5, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = call i64 @IS_ERR(i8* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i8*, i8** %5, align 8
  store i8* %17, i8** %4, align 8
  br label %69

18:                                               ; preds = %3
  %19 = load i32, i32* %9, align 4
  %20 = load %struct.xdr_netobj*, %struct.xdr_netobj** %7, align 8
  %21 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load i32, i32* %9, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = load %struct.xdr_netobj*, %struct.xdr_netobj** %7, align 8
  %26 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %25, i32 0, i32 1
  store i32* null, i32** %26, align 8
  %27 = load i8*, i8** %5, align 8
  store i8* %27, i8** %4, align 8
  br label %69

28:                                               ; preds = %18
  %29 = load i8*, i8** %5, align 8
  %30 = load i32, i32* %9, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %29, i64 %31
  store i8* %32, i8** %8, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = icmp ugt i8* %33, %34
  br i1 %35, label %40, label %36

36:                                               ; preds = %28
  %37 = load i8*, i8** %8, align 8
  %38 = load i8*, i8** %5, align 8
  %39 = icmp ult i8* %37, %38
  br label %40

40:                                               ; preds = %36, %28
  %41 = phi i1 [ true, %28 ], [ %39, %36 ]
  %42 = zext i1 %41 to i32
  %43 = call i64 @unlikely(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = load i32, i32* @EFAULT, align 4
  %47 = sub nsw i32 0, %46
  %48 = call i8* @ERR_PTR(i32 %47)
  store i8* %48, i8** %4, align 8
  br label %69

49:                                               ; preds = %40
  %50 = load i8*, i8** %5, align 8
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* @GFP_NOFS, align 4
  %53 = call i32* @kmemdup(i8* %50, i32 %51, i32 %52)
  %54 = load %struct.xdr_netobj*, %struct.xdr_netobj** %7, align 8
  %55 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %54, i32 0, i32 1
  store i32* %53, i32** %55, align 8
  %56 = load %struct.xdr_netobj*, %struct.xdr_netobj** %7, align 8
  %57 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = icmp eq i32* %58, null
  %60 = zext i1 %59 to i32
  %61 = call i64 @unlikely(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %49
  %64 = load i32, i32* @ENOMEM, align 4
  %65 = sub nsw i32 0, %64
  %66 = call i8* @ERR_PTR(i32 %65)
  store i8* %66, i8** %4, align 8
  br label %69

67:                                               ; preds = %49
  %68 = load i8*, i8** %8, align 8
  store i8* %68, i8** %4, align 8
  br label %69

69:                                               ; preds = %67, %63, %45, %24, %16
  %70 = load i8*, i8** %4, align 8
  ret i8* %70
}

declare dso_local i8* @simple_get_bytes(i8*, i8*, i32*, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i8* @ERR_PTR(i32) #1

declare dso_local i32* @kmemdup(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
