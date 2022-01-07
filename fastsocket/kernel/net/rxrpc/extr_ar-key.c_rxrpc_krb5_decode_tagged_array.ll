; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rxrpc/extr_ar-key.c_rxrpc_krb5_decode_tagged_array.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rxrpc/extr_ar-key.c_rxrpc_krb5_decode_tagged_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.krb5_tagged_data = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c",,%u,%zu,{%x},%u\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"n_elem %d\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c" = 0 [toklen=%u]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.krb5_tagged_data**, i32*, i32, i64, i32**, i32*)* @rxrpc_krb5_decode_tagged_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rxrpc_krb5_decode_tagged_array(%struct.krb5_tagged_data** %0, i32* %1, i32 %2, i64 %3, i32** %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.krb5_tagged_data**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.krb5_tagged_data*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.krb5_tagged_data** %0, %struct.krb5_tagged_data*** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i64 %3, i64* %11, align 8
  store i32** %4, i32*** %12, align 8
  store i32* %5, i32** %13, align 8
  %20 = load i32**, i32*** %12, align 8
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %15, align 8
  %22 = load i32*, i32** %13, align 8
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %16, align 4
  %24 = load i32, i32* %16, align 4
  %25 = icmp ult i32 %24, 4
  br i1 %25, label %26, label %29

26:                                               ; preds = %6
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %7, align 4
  br label %108

29:                                               ; preds = %6
  %30 = load i32, i32* %10, align 4
  %31 = load i64, i64* %11, align 8
  %32 = load i32*, i32** %15, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @ntohl(i32 %34)
  %36 = load i32, i32* %16, align 4
  %37 = call i32 @_enter(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %30, i64 %31, i32 %35, i32 %36)
  %38 = load i32*, i32** %15, align 8
  %39 = getelementptr inbounds i32, i32* %38, i32 1
  store i32* %39, i32** %15, align 8
  %40 = load i32, i32* %38, align 4
  %41 = call i32 @ntohl(i32 %40)
  store i32 %41, i32* %17, align 4
  %42 = load i32, i32* %16, align 4
  %43 = sub i32 %42, 4
  store i32 %43, i32* %16, align 4
  %44 = load i32, i32* %17, align 4
  %45 = icmp ult i32 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %29
  %47 = load i32, i32* %17, align 4
  %48 = load i32, i32* %10, align 4
  %49 = icmp ugt i32 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %46, %29
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %7, align 4
  br label %108

53:                                               ; preds = %46
  %54 = load i32, i32* %17, align 4
  %55 = load i32*, i32** %9, align 8
  store i32 %54, i32* %55, align 4
  %56 = load i32, i32* %17, align 4
  %57 = icmp ugt i32 %56, 0
  br i1 %57, label %58, label %101

58:                                               ; preds = %53
  %59 = load i32, i32* %16, align 4
  %60 = load i32, i32* %17, align 4
  %61 = add i32 %60, 1
  %62 = mul i32 %61, 4
  %63 = icmp ule i32 %59, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %58
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %7, align 4
  br label %108

67:                                               ; preds = %58
  %68 = load i32, i32* %17, align 4
  %69 = call i32 @_debug(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %68)
  %70 = load i32, i32* %17, align 4
  %71 = load i32, i32* @GFP_KERNEL, align 4
  %72 = call %struct.krb5_tagged_data* @kcalloc(i32 4, i32 %70, i32 %71)
  store %struct.krb5_tagged_data* %72, %struct.krb5_tagged_data** %14, align 8
  %73 = load %struct.krb5_tagged_data*, %struct.krb5_tagged_data** %14, align 8
  %74 = icmp ne %struct.krb5_tagged_data* %73, null
  br i1 %74, label %78, label %75

75:                                               ; preds = %67
  %76 = load i32, i32* @ENOMEM, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %7, align 4
  br label %108

78:                                               ; preds = %67
  %79 = load %struct.krb5_tagged_data*, %struct.krb5_tagged_data** %14, align 8
  %80 = load %struct.krb5_tagged_data**, %struct.krb5_tagged_data*** %8, align 8
  store %struct.krb5_tagged_data* %79, %struct.krb5_tagged_data** %80, align 8
  store i32 0, i32* %18, align 4
  br label %81

81:                                               ; preds = %97, %78
  %82 = load i32, i32* %18, align 4
  %83 = load i32, i32* %17, align 4
  %84 = icmp ult i32 %82, %83
  br i1 %84, label %85, label %100

85:                                               ; preds = %81
  %86 = load %struct.krb5_tagged_data*, %struct.krb5_tagged_data** %14, align 8
  %87 = load i32, i32* %18, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds %struct.krb5_tagged_data, %struct.krb5_tagged_data* %86, i64 %88
  %90 = load i64, i64* %11, align 8
  %91 = call i32 @rxrpc_krb5_decode_tagged_data(%struct.krb5_tagged_data* %89, i64 %90, i32** %15, i32* %16)
  store i32 %91, i32* %19, align 4
  %92 = load i32, i32* %19, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %85
  %95 = load i32, i32* %19, align 4
  store i32 %95, i32* %7, align 4
  br label %108

96:                                               ; preds = %85
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %18, align 4
  %99 = add i32 %98, 1
  store i32 %99, i32* %18, align 4
  br label %81

100:                                              ; preds = %81
  br label %101

101:                                              ; preds = %100, %53
  %102 = load i32*, i32** %15, align 8
  %103 = load i32**, i32*** %12, align 8
  store i32* %102, i32** %103, align 8
  %104 = load i32, i32* %16, align 4
  %105 = load i32*, i32** %13, align 8
  store i32 %104, i32* %105, align 4
  %106 = load i32, i32* %16, align 4
  %107 = call i32 @_leave(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %106)
  store i32 0, i32* %7, align 4
  br label %108

108:                                              ; preds = %101, %94, %75, %64, %50, %26
  %109 = load i32, i32* %7, align 4
  ret i32 %109
}

declare dso_local i32 @_enter(i8*, i32, i64, i32, i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @_debug(i8*, i32) #1

declare dso_local %struct.krb5_tagged_data* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @rxrpc_krb5_decode_tagged_data(%struct.krb5_tagged_data*, i64, i32**, i32*) #1

declare dso_local i32 @_leave(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
