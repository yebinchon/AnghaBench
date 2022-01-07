; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ggc-zone.c_ggc_set_mark.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ggc-zone.c_ggc_set_mark.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32* }
%struct.TYPE_4__ = type { i32 }
%struct.page_entry = type { i64, i64 }
%struct.large_page_entry = type { i32 }
%struct.small_page_entry = type { i32* }

@pch_zone = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@BYTES_PER_MARK_BIT = common dso_local global i32 0, align 4
@GGC_DEBUG_LEVEL = common dso_local global i32 0, align 4
@G = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@.str = private unnamed_addr constant [12 x i8] c"Marking %p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ggc_set_mark(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.page_entry*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.large_page_entry*, align 8
  %10 = alloca %struct.small_page_entry*, align 8
  store i8* %0, i8** %3, align 8
  %11 = load i8*, i8** %3, align 8
  store i8* %11, i8** %5, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = call %struct.page_entry* @zone_get_object_page(i8* %12)
  store %struct.page_entry* %13, %struct.page_entry** %4, align 8
  %14 = load %struct.page_entry*, %struct.page_entry** %4, align 8
  %15 = getelementptr inbounds %struct.page_entry, %struct.page_entry* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %50

18:                                               ; preds = %1
  %19 = load i8*, i8** %5, align 8
  %20 = load i8*, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @pch_zone, i32 0, i32 0), align 8
  %21 = ptrtoint i8* %19 to i64
  %22 = ptrtoint i8* %20 to i64
  %23 = sub i64 %21, %22
  %24 = load i32, i32* @BYTES_PER_MARK_BIT, align 4
  %25 = sext i32 %24 to i64
  %26 = sdiv i64 %23, %25
  store i64 %26, i64* %8, align 8
  %27 = load i64, i64* %8, align 8
  %28 = udiv i64 %27, 32
  store i64 %28, i64* %6, align 8
  %29 = load i64, i64* %8, align 8
  %30 = urem i64 %29, 32
  store i64 %30, i64* %7, align 8
  %31 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @pch_zone, i32 0, i32 1), align 8
  %32 = load i64, i64* %6, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = load i64, i64* %7, align 8
  %36 = trunc i64 %35 to i32
  %37 = shl i32 1, %36
  %38 = and i32 %34, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %18
  store i32 1, i32* %2, align 4
  br label %103

41:                                               ; preds = %18
  %42 = load i64, i64* %7, align 8
  %43 = trunc i64 %42 to i32
  %44 = shl i32 1, %43
  %45 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @pch_zone, i32 0, i32 1), align 8
  %46 = load i64, i64* %6, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %48, %44
  store i32 %49, i32* %47, align 4
  br label %95

50:                                               ; preds = %1
  %51 = load %struct.page_entry*, %struct.page_entry** %4, align 8
  %52 = getelementptr inbounds %struct.page_entry, %struct.page_entry* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %66

55:                                               ; preds = %50
  %56 = load %struct.page_entry*, %struct.page_entry** %4, align 8
  %57 = bitcast %struct.page_entry* %56 to %struct.large_page_entry*
  store %struct.large_page_entry* %57, %struct.large_page_entry** %9, align 8
  %58 = load %struct.large_page_entry*, %struct.large_page_entry** %9, align 8
  %59 = getelementptr inbounds %struct.large_page_entry, %struct.large_page_entry* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %55
  store i32 1, i32* %2, align 4
  br label %103

63:                                               ; preds = %55
  %64 = load %struct.large_page_entry*, %struct.large_page_entry** %9, align 8
  %65 = getelementptr inbounds %struct.large_page_entry, %struct.large_page_entry* %64, i32 0, i32 0
  store i32 1, i32* %65, align 4
  br label %94

66:                                               ; preds = %50
  %67 = load %struct.page_entry*, %struct.page_entry** %4, align 8
  %68 = bitcast %struct.page_entry* %67 to %struct.small_page_entry*
  store %struct.small_page_entry* %68, %struct.small_page_entry** %10, align 8
  %69 = load %struct.small_page_entry*, %struct.small_page_entry** %10, align 8
  %70 = getelementptr inbounds %struct.small_page_entry, %struct.small_page_entry* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = load i8*, i8** %3, align 8
  %73 = call i64 @zone_get_object_mark_word(i8* %72)
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = load i8*, i8** %3, align 8
  %77 = call i32 @zone_get_object_mark_bit(i8* %76)
  %78 = shl i32 1, %77
  %79 = and i32 %75, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %66
  store i32 1, i32* %2, align 4
  br label %103

82:                                               ; preds = %66
  %83 = load i8*, i8** %3, align 8
  %84 = call i32 @zone_get_object_mark_bit(i8* %83)
  %85 = shl i32 1, %84
  %86 = load %struct.small_page_entry*, %struct.small_page_entry** %10, align 8
  %87 = getelementptr inbounds %struct.small_page_entry, %struct.small_page_entry* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = load i8*, i8** %3, align 8
  %90 = call i64 @zone_get_object_mark_word(i8* %89)
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = or i32 %92, %85
  store i32 %93, i32* %91, align 4
  br label %94

94:                                               ; preds = %82, %63
  br label %95

95:                                               ; preds = %94, %41
  %96 = load i32, i32* @GGC_DEBUG_LEVEL, align 4
  %97 = icmp sge i32 %96, 4
  br i1 %97, label %98, label %102

98:                                               ; preds = %95
  %99 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @G, i32 0, i32 0), align 4
  %100 = load i8*, i8** %3, align 8
  %101 = call i32 @fprintf(i32 %99, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %100)
  br label %102

102:                                              ; preds = %98, %95
  store i32 0, i32* %2, align 4
  br label %103

103:                                              ; preds = %102, %81, %62, %40
  %104 = load i32, i32* %2, align 4
  ret i32 %104
}

declare dso_local %struct.page_entry* @zone_get_object_page(i8*) #1

declare dso_local i64 @zone_get_object_mark_word(i8*) #1

declare dso_local i32 @zone_get_object_mark_bit(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
