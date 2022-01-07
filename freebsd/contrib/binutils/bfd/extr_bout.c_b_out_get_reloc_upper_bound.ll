; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_bout.c_b_out_get_reloc_upper_bound.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_bout.c_b_out_get_reloc_upper_bound.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }

@bfd_object = common dso_local global i64 0, align 8
@bfd_error_invalid_operation = common dso_local global i32 0, align 4
@SEC_CONSTRUCTOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, %struct.TYPE_7__*)* @b_out_get_reloc_upper_bound to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @b_out_get_reloc_upper_bound(i32* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = call i64 @bfd_get_format(i32* %6)
  %8 = load i64, i64* @bfd_object, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i32, i32* @bfd_error_invalid_operation, align 4
  %12 = call i32 @bfd_set_error(i32 %11)
  store i64 -1, i64* %3, align 8
  br label %64

13:                                               ; preds = %2
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @SEC_CONSTRUCTOR, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %13
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %23, 1
  %25 = sext i32 %24 to i64
  %26 = mul i64 8, %25
  store i64 %26, i64* %3, align 8
  br label %64

27:                                               ; preds = %13
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %29 = load i32*, i32** %4, align 8
  %30 = call %struct.TYPE_7__* @obj_datasec(i32* %29)
  %31 = icmp eq %struct.TYPE_7__* %28, %30
  br i1 %31, label %32, label %41

32:                                               ; preds = %27
  %33 = load i32*, i32** %4, align 8
  %34 = call %struct.TYPE_8__* @exec_hdr(i32* %33)
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = sext i32 %36 to i64
  %38 = udiv i64 %37, 4
  %39 = add i64 %38, 1
  %40 = mul i64 8, %39
  store i64 %40, i64* %3, align 8
  br label %64

41:                                               ; preds = %27
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %43 = load i32*, i32** %4, align 8
  %44 = call %struct.TYPE_7__* @obj_textsec(i32* %43)
  %45 = icmp eq %struct.TYPE_7__* %42, %44
  br i1 %45, label %46, label %55

46:                                               ; preds = %41
  %47 = load i32*, i32** %4, align 8
  %48 = call %struct.TYPE_8__* @exec_hdr(i32* %47)
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = sext i32 %50 to i64
  %52 = udiv i64 %51, 4
  %53 = add i64 %52, 1
  %54 = mul i64 8, %53
  store i64 %54, i64* %3, align 8
  br label %64

55:                                               ; preds = %41
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %57 = load i32*, i32** %4, align 8
  %58 = call %struct.TYPE_7__* @obj_bsssec(i32* %57)
  %59 = icmp eq %struct.TYPE_7__* %56, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  store i64 0, i64* %3, align 8
  br label %64

61:                                               ; preds = %55
  %62 = load i32, i32* @bfd_error_invalid_operation, align 4
  %63 = call i32 @bfd_set_error(i32 %62)
  store i64 -1, i64* %3, align 8
  br label %64

64:                                               ; preds = %61, %60, %46, %32, %20, %10
  %65 = load i64, i64* %3, align 8
  ret i64 %65
}

declare dso_local i64 @bfd_get_format(i32*) #1

declare dso_local i32 @bfd_set_error(i32) #1

declare dso_local %struct.TYPE_7__* @obj_datasec(i32*) #1

declare dso_local %struct.TYPE_8__* @exec_hdr(i32*) #1

declare dso_local %struct.TYPE_7__* @obj_textsec(i32*) #1

declare dso_local %struct.TYPE_7__* @obj_bsssec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
