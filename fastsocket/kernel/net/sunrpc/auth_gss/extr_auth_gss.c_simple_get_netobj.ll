; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/auth_gss/extr_auth_gss.c_simple_get_netobj.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/auth_gss/extr_auth_gss.c_simple_get_netobj.c"
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
  br label %62

18:                                               ; preds = %3
  %19 = load i8*, i8** %5, align 8
  %20 = load i32, i32* %9, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %19, i64 %21
  store i8* %22, i8** %8, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = icmp ugt i8* %23, %24
  br i1 %25, label %30, label %26

26:                                               ; preds = %18
  %27 = load i8*, i8** %8, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = icmp ult i8* %27, %28
  br label %30

30:                                               ; preds = %26, %18
  %31 = phi i1 [ true, %18 ], [ %29, %26 ]
  %32 = zext i1 %31 to i32
  %33 = call i64 @unlikely(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = load i32, i32* @EFAULT, align 4
  %37 = sub nsw i32 0, %36
  %38 = call i8* @ERR_PTR(i32 %37)
  store i8* %38, i8** %4, align 8
  br label %62

39:                                               ; preds = %30
  %40 = load i8*, i8** %5, align 8
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* @GFP_NOFS, align 4
  %43 = call i32* @kmemdup(i8* %40, i32 %41, i32 %42)
  %44 = load %struct.xdr_netobj*, %struct.xdr_netobj** %7, align 8
  %45 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %44, i32 0, i32 1
  store i32* %43, i32** %45, align 8
  %46 = load %struct.xdr_netobj*, %struct.xdr_netobj** %7, align 8
  %47 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = icmp eq i32* %48, null
  %50 = zext i1 %49 to i32
  %51 = call i64 @unlikely(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %39
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  %56 = call i8* @ERR_PTR(i32 %55)
  store i8* %56, i8** %4, align 8
  br label %62

57:                                               ; preds = %39
  %58 = load i32, i32* %9, align 4
  %59 = load %struct.xdr_netobj*, %struct.xdr_netobj** %7, align 8
  %60 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = load i8*, i8** %8, align 8
  store i8* %61, i8** %4, align 8
  br label %62

62:                                               ; preds = %57, %53, %35, %16
  %63 = load i8*, i8** %4, align 8
  ret i8* %63
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
