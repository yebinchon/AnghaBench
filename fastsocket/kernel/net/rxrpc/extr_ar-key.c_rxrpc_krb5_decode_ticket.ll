; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rxrpc/extr_ar-key.c_rxrpc_krb5_decode_ticket.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rxrpc/extr_ar-key.c_rxrpc_krb5_decode_ticket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c",{%x},%u\00", align 1
@AFSTOKEN_K5_TIX_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"ticket len %u\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c" = 0 [toklen=%u]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, i32*, i32**, i32*)* @rxrpc_krb5_decode_ticket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rxrpc_krb5_decode_ticket(i32** %0, i32* %1, i32** %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32** %0, i32*** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32** %2, i32*** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load i32**, i32*** %8, align 8
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %10, align 8
  %15 = load i32*, i32** %9, align 8
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %11, align 4
  %18 = icmp ule i32 %17, 4
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %83

22:                                               ; preds = %4
  %23 = load i32*, i32** %10, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @ntohl(i32 %25)
  %27 = load i32, i32* %11, align 4
  %28 = call i32 @_enter(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %27)
  %29 = load i32*, i32** %10, align 8
  %30 = getelementptr inbounds i32, i32* %29, i32 1
  store i32* %30, i32** %10, align 8
  %31 = load i32, i32* %29, align 4
  %32 = call i32 @ntohl(i32 %31)
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %11, align 4
  %34 = sub i32 %33, 4
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* @AFSTOKEN_K5_TIX_MAX, align 4
  %37 = icmp ugt i32 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %22
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %5, align 4
  br label %83

41:                                               ; preds = %22
  %42 = load i32, i32* %12, align 4
  %43 = load i32*, i32** %7, align 8
  store i32 %42, i32* %43, align 4
  %44 = load i32, i32* %12, align 4
  %45 = call i32 @_debug(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* %12, align 4
  %47 = icmp ugt i32 %46, 0
  br i1 %47, label %48, label %76

48:                                               ; preds = %41
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* @GFP_KERNEL, align 4
  %51 = call i32* @kmalloc(i32 %49, i32 %50)
  %52 = load i32**, i32*** %6, align 8
  store i32* %51, i32** %52, align 8
  %53 = load i32**, i32*** %6, align 8
  %54 = load i32*, i32** %53, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %48
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %5, align 4
  br label %83

59:                                               ; preds = %48
  %60 = load i32**, i32*** %6, align 8
  %61 = load i32*, i32** %60, align 8
  %62 = load i32*, i32** %10, align 8
  %63 = load i32, i32* %12, align 4
  %64 = call i32 @memcpy(i32* %61, i32* %62, i32 %63)
  %65 = load i32, i32* %12, align 4
  %66 = add i32 %65, 3
  %67 = and i32 %66, -4
  store i32 %67, i32* %12, align 4
  %68 = load i32, i32* %12, align 4
  %69 = load i32, i32* %11, align 4
  %70 = sub i32 %69, %68
  store i32 %70, i32* %11, align 4
  %71 = load i32, i32* %12, align 4
  %72 = lshr i32 %71, 2
  %73 = load i32*, i32** %10, align 8
  %74 = zext i32 %72 to i64
  %75 = getelementptr inbounds i32, i32* %73, i64 %74
  store i32* %75, i32** %10, align 8
  br label %76

76:                                               ; preds = %59, %41
  %77 = load i32*, i32** %10, align 8
  %78 = load i32**, i32*** %8, align 8
  store i32* %77, i32** %78, align 8
  %79 = load i32, i32* %11, align 4
  %80 = load i32*, i32** %9, align 8
  store i32 %79, i32* %80, align 4
  %81 = load i32, i32* %11, align 4
  %82 = call i32 @_leave(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %81)
  store i32 0, i32* %5, align 4
  br label %83

83:                                               ; preds = %76, %56, %38, %19
  %84 = load i32, i32* %5, align 4
  ret i32 %84
}

declare dso_local i32 @_enter(i8*, i32, i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @_debug(i8*, i32) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @_leave(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
