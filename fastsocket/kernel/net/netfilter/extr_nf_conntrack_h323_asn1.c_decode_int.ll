; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_h323_asn1.c_decode_int.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_h323_asn1.c_decode_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.field_t = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"%*.s%s\00", align 1
@TAB_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@DECODE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c" = %u\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@H323_ERROR_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, %struct.field_t*, i8*, i32)* @decode_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_int(%struct.TYPE_9__* %0, %struct.field_t* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.field_t*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store %struct.field_t* %1, %struct.field_t** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = load i32, i32* @TAB_SIZE, align 4
  %13 = mul nsw i32 %11, %12
  %14 = load %struct.field_t*, %struct.field_t** %6, align 8
  %15 = getelementptr inbounds %struct.field_t, %struct.field_t* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 4
  %17 = call i32 (i8*, ...) @PRINT(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %16)
  %18 = load %struct.field_t*, %struct.field_t** %6, align 8
  %19 = getelementptr inbounds %struct.field_t, %struct.field_t* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %86 [
    i32 131, label %21
    i32 128, label %28
    i32 130, label %35
    i32 129, label %74
  ]

21:                                               ; preds = %4
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %23 = call i32 @BYTE_ALIGN(%struct.TYPE_9__* %22)
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %25, align 4
  br label %92

28:                                               ; preds = %4
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %30 = call i32 @BYTE_ALIGN(%struct.TYPE_9__* %29)
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, 2
  store i32 %34, i32* %32, align 4
  br label %92

35:                                               ; preds = %4
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %37 = call i32 @get_bits(%struct.TYPE_9__* %36, i32 2)
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %9, align 4
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %40 = call i32 @BYTE_ALIGN(%struct.TYPE_9__* %39)
  %41 = load i8*, i8** %7, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %68

43:                                               ; preds = %35
  %44 = load %struct.field_t*, %struct.field_t** %6, align 8
  %45 = getelementptr inbounds %struct.field_t, %struct.field_t* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @DECODE, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %68

50:                                               ; preds = %43
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @get_uint(%struct.TYPE_9__* %51, i32 %52)
  %54 = load %struct.field_t*, %struct.field_t** %6, align 8
  %55 = getelementptr inbounds %struct.field_t, %struct.field_t* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = add i32 %53, %56
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* %10, align 4
  %59 = call i32 (i8*, ...) @PRINT(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* %10, align 4
  %61 = load i8*, i8** %7, align 8
  %62 = load %struct.field_t*, %struct.field_t** %6, align 8
  %63 = getelementptr inbounds %struct.field_t, %struct.field_t* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %61, i64 %65
  %67 = bitcast i8* %66 to i32*
  store i32 %60, i32* %67, align 4
  br label %68

68:                                               ; preds = %50, %43, %35
  %69 = load i32, i32* %9, align 4
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = add i32 %72, %69
  store i32 %73, i32* %71, align 4
  br label %92

74:                                               ; preds = %4
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %76 = call i32 @BYTE_ALIGN(%struct.TYPE_9__* %75)
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %78 = call i32 @CHECK_BOUND(%struct.TYPE_9__* %77, i32 2)
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %80 = call i32 @get_len(%struct.TYPE_9__* %79)
  store i32 %80, i32* %9, align 4
  %81 = load i32, i32* %9, align 4
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = add i32 %84, %81
  store i32 %85, i32* %83, align 4
  br label %92

86:                                               ; preds = %4
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %88 = load %struct.field_t*, %struct.field_t** %6, align 8
  %89 = getelementptr inbounds %struct.field_t, %struct.field_t* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @INC_BITS(%struct.TYPE_9__* %87, i32 %90)
  br label %92

92:                                               ; preds = %86, %74, %68, %28, %21
  %93 = call i32 (i8*, ...) @PRINT(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %95 = call i32 @CHECK_BOUND(%struct.TYPE_9__* %94, i32 0)
  %96 = load i32, i32* @H323_ERROR_NONE, align 4
  ret i32 %96
}

declare dso_local i32 @PRINT(i8*, ...) #1

declare dso_local i32 @BYTE_ALIGN(%struct.TYPE_9__*) #1

declare dso_local i32 @get_bits(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @get_uint(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @CHECK_BOUND(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @get_len(%struct.TYPE_9__*) #1

declare dso_local i32 @INC_BITS(%struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
