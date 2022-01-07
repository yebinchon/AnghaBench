; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_archive.c_bfd_dont_truncate_arname.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_archive.c_bfd_dont_truncate_arname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar_hdr = type { i32* }

@BFD_TRADITIONAL_FORMAT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfd_dont_truncate_arname(i32* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ar_hdr*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.ar_hdr*
  store %struct.ar_hdr* %12, %struct.ar_hdr** %7, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = call i64 @ar_maxnamelen(i32* %13)
  store i64 %14, i64* %10, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = call i32 @bfd_get_file_flags(i32* %15)
  %17 = load i32, i32* @BFD_TRADITIONAL_FORMAT, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %3
  %21 = load i32*, i32** %4, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 @bfd_bsd_truncate_arname(i32* %21, i8* %22, i8* %23)
  br label %65

25:                                               ; preds = %3
  %26 = load i32*, i32** %4, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = call i8* @normalize(i32* %26, i8* %27)
  store i8* %28, i8** %9, align 8
  %29 = load i8*, i8** %9, align 8
  %30 = icmp eq i8* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = call i32 (...) @abort() #3
  unreachable

33:                                               ; preds = %25
  %34 = load i8*, i8** %9, align 8
  %35 = call i64 @strlen(i8* %34)
  store i64 %35, i64* %8, align 8
  %36 = load i64, i64* %8, align 8
  %37 = load i64, i64* %10, align 8
  %38 = icmp ule i64 %36, %37
  br i1 %38, label %39, label %46

39:                                               ; preds = %33
  %40 = load %struct.ar_hdr*, %struct.ar_hdr** %7, align 8
  %41 = getelementptr inbounds %struct.ar_hdr, %struct.ar_hdr* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i8*, i8** %9, align 8
  %44 = load i64, i64* %8, align 8
  %45 = call i32 @memcpy(i32* %42, i8* %43, i64 %44)
  br label %46

46:                                               ; preds = %39, %33
  %47 = load i64, i64* %8, align 8
  %48 = load i64, i64* %10, align 8
  %49 = icmp ult i64 %47, %48
  br i1 %49, label %57, label %50

50:                                               ; preds = %46
  %51 = load i64, i64* %8, align 8
  %52 = load i64, i64* %10, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %65

54:                                               ; preds = %50
  %55 = load i64, i64* %8, align 8
  %56 = icmp ult i64 %55, 8
  br i1 %56, label %57, label %65

57:                                               ; preds = %54, %46
  %58 = load i32*, i32** %4, align 8
  %59 = call i32 @ar_padchar(i32* %58)
  %60 = load %struct.ar_hdr*, %struct.ar_hdr** %7, align 8
  %61 = getelementptr inbounds %struct.ar_hdr, %struct.ar_hdr* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = load i64, i64* %8, align 8
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  store i32 %59, i32* %64, align 4
  br label %65

65:                                               ; preds = %20, %57, %54, %50
  ret void
}

declare dso_local i64 @ar_maxnamelen(i32*) #1

declare dso_local i32 @bfd_get_file_flags(i32*) #1

declare dso_local i32 @bfd_bsd_truncate_arname(i32*, i8*, i8*) #1

declare dso_local i8* @normalize(i32*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @memcpy(i32*, i8*, i64) #1

declare dso_local i32 @ar_padchar(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
