; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ggc-zone.c_ggc_marked_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ggc-zone.c_ggc_marked_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i32* }
%struct.page_entry = type { i64, i64 }
%struct.large_page_entry = type { i32 }
%struct.small_page_entry = type { i32* }

@pch_zone = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@BYTES_PER_MARK_BIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ggc_marked_p(i8* %0) #0 {
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
  br i1 %17, label %18, label %41

18:                                               ; preds = %1
  %19 = load i8*, i8** %5, align 8
  %20 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pch_zone, i32 0, i32 0), align 8
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
  %31 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pch_zone, i32 0, i32 1), align 8
  %32 = load i64, i64* %6, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = load i64, i64* %7, align 8
  %36 = trunc i64 %35 to i32
  %37 = shl i32 1, %36
  %38 = and i32 %34, %37
  %39 = icmp ne i32 %38, 0
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %2, align 4
  br label %68

41:                                               ; preds = %1
  %42 = load %struct.page_entry*, %struct.page_entry** %4, align 8
  %43 = getelementptr inbounds %struct.page_entry, %struct.page_entry* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %41
  %47 = load %struct.page_entry*, %struct.page_entry** %4, align 8
  %48 = bitcast %struct.page_entry* %47 to %struct.large_page_entry*
  store %struct.large_page_entry* %48, %struct.large_page_entry** %9, align 8
  %49 = load %struct.large_page_entry*, %struct.large_page_entry** %9, align 8
  %50 = getelementptr inbounds %struct.large_page_entry, %struct.large_page_entry* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %2, align 4
  br label %68

52:                                               ; preds = %41
  %53 = load %struct.page_entry*, %struct.page_entry** %4, align 8
  %54 = bitcast %struct.page_entry* %53 to %struct.small_page_entry*
  store %struct.small_page_entry* %54, %struct.small_page_entry** %10, align 8
  %55 = load %struct.small_page_entry*, %struct.small_page_entry** %10, align 8
  %56 = getelementptr inbounds %struct.small_page_entry, %struct.small_page_entry* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load i8*, i8** %3, align 8
  %59 = call i64 @zone_get_object_mark_word(i8* %58)
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = load i8*, i8** %3, align 8
  %63 = call i32 @zone_get_object_mark_bit(i8* %62)
  %64 = shl i32 1, %63
  %65 = and i32 %61, %64
  %66 = icmp ne i32 0, %65
  %67 = zext i1 %66 to i32
  store i32 %67, i32* %2, align 4
  br label %68

68:                                               ; preds = %52, %46, %18
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local %struct.page_entry* @zone_get_object_page(i8*) #1

declare dso_local i64 @zone_get_object_mark_word(i8*) #1

declare dso_local i32 @zone_get_object_mark_bit(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
