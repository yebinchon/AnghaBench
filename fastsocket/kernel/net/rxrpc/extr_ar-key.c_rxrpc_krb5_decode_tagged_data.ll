; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rxrpc/extr_ar-key.c_rxrpc_krb5_decode_tagged_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rxrpc/extr_ar-key.c_rxrpc_krb5_decode_tagged_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.krb5_tagged_data = type { i32, i8*, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c",%zu,{%x,%x},%u\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"tag %x len %x\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c" = 0 [toklen=%u]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.krb5_tagged_data*, i64, i32**, i32*)* @rxrpc_krb5_decode_tagged_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rxrpc_krb5_decode_tagged_data(%struct.krb5_tagged_data* %0, i64 %1, i32** %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.krb5_tagged_data*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.krb5_tagged_data* %0, %struct.krb5_tagged_data** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32** %2, i32*** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load i32**, i32*** %8, align 8
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %10, align 8
  %15 = load i32*, i32** %9, align 8
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %11, align 4
  %18 = icmp ule i32 %17, 8
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %105

22:                                               ; preds = %4
  %23 = load i64, i64* %7, align 8
  %24 = load i32*, i32** %10, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = call i8* @ntohl(i32 %26)
  %28 = load i32*, i32** %10, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  %30 = load i32, i32* %29, align 4
  %31 = call i8* @ntohl(i32 %30)
  %32 = load i32, i32* %11, align 4
  %33 = call i32 @_enter(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i64 %23, i8* %27, i8* %31, i32 %32)
  %34 = load i32*, i32** %10, align 8
  %35 = getelementptr inbounds i32, i32* %34, i32 1
  store i32* %35, i32** %10, align 8
  %36 = load i32, i32* %34, align 4
  %37 = call i8* @ntohl(i32 %36)
  %38 = load %struct.krb5_tagged_data*, %struct.krb5_tagged_data** %6, align 8
  %39 = getelementptr inbounds %struct.krb5_tagged_data, %struct.krb5_tagged_data* %38, i32 0, i32 1
  store i8* %37, i8** %39, align 8
  %40 = load i32*, i32** %10, align 8
  %41 = getelementptr inbounds i32, i32* %40, i32 1
  store i32* %41, i32** %10, align 8
  %42 = load i32, i32* %40, align 4
  %43 = call i8* @ntohl(i32 %42)
  %44 = ptrtoint i8* %43 to i32
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %11, align 4
  %46 = sub i32 %45, 8
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %12, align 4
  %48 = zext i32 %47 to i64
  %49 = load i64, i64* %7, align 8
  %50 = icmp ugt i64 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %22
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %5, align 4
  br label %105

54:                                               ; preds = %22
  %55 = load i32, i32* %12, align 4
  %56 = load %struct.krb5_tagged_data*, %struct.krb5_tagged_data** %6, align 8
  %57 = getelementptr inbounds %struct.krb5_tagged_data, %struct.krb5_tagged_data* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load i32, i32* %12, align 4
  %59 = icmp ugt i32 %58, 0
  br i1 %59, label %60, label %91

60:                                               ; preds = %54
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* @GFP_KERNEL, align 4
  %63 = call i32 @kmalloc(i32 %61, i32 %62)
  %64 = load %struct.krb5_tagged_data*, %struct.krb5_tagged_data** %6, align 8
  %65 = getelementptr inbounds %struct.krb5_tagged_data, %struct.krb5_tagged_data* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 8
  %66 = load %struct.krb5_tagged_data*, %struct.krb5_tagged_data** %6, align 8
  %67 = getelementptr inbounds %struct.krb5_tagged_data, %struct.krb5_tagged_data* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %60
  %71 = load i32, i32* @ENOMEM, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %5, align 4
  br label %105

73:                                               ; preds = %60
  %74 = load %struct.krb5_tagged_data*, %struct.krb5_tagged_data** %6, align 8
  %75 = getelementptr inbounds %struct.krb5_tagged_data, %struct.krb5_tagged_data* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = load i32*, i32** %10, align 8
  %78 = load i32, i32* %12, align 4
  %79 = call i32 @memcpy(i32 %76, i32* %77, i32 %78)
  %80 = load i32, i32* %12, align 4
  %81 = add i32 %80, 3
  %82 = and i32 %81, -4
  store i32 %82, i32* %12, align 4
  %83 = load i32, i32* %12, align 4
  %84 = load i32, i32* %11, align 4
  %85 = sub i32 %84, %83
  store i32 %85, i32* %11, align 4
  %86 = load i32, i32* %12, align 4
  %87 = lshr i32 %86, 2
  %88 = load i32*, i32** %10, align 8
  %89 = zext i32 %87 to i64
  %90 = getelementptr inbounds i32, i32* %88, i64 %89
  store i32* %90, i32** %10, align 8
  br label %91

91:                                               ; preds = %73, %54
  %92 = load %struct.krb5_tagged_data*, %struct.krb5_tagged_data** %6, align 8
  %93 = getelementptr inbounds %struct.krb5_tagged_data, %struct.krb5_tagged_data* %92, i32 0, i32 1
  %94 = load i8*, i8** %93, align 8
  %95 = load %struct.krb5_tagged_data*, %struct.krb5_tagged_data** %6, align 8
  %96 = getelementptr inbounds %struct.krb5_tagged_data, %struct.krb5_tagged_data* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @_debug(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* %94, i32 %97)
  %99 = load i32*, i32** %10, align 8
  %100 = load i32**, i32*** %8, align 8
  store i32* %99, i32** %100, align 8
  %101 = load i32, i32* %11, align 4
  %102 = load i32*, i32** %9, align 8
  store i32 %101, i32* %102, align 4
  %103 = load i32, i32* %11, align 4
  %104 = call i32 @_leave(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %103)
  store i32 0, i32* %5, align 4
  br label %105

105:                                              ; preds = %91, %70, %51, %19
  %106 = load i32, i32* %5, align 4
  ret i32 %106
}

declare dso_local i32 @_enter(i8*, i64, i8*, i8*, i32) #1

declare dso_local i8* @ntohl(i32) #1

declare dso_local i32 @kmalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @_debug(i8*, i8*, i32) #1

declare dso_local i32 @_leave(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
