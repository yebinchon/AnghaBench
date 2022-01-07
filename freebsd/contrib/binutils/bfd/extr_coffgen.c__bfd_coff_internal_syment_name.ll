; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_coffgen.c__bfd_coff_internal_syment_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_coffgen.c__bfd_coff_internal_syment_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.internal_syment = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i64, i64 }

@SYMNMLEN = common dso_local global i64 0, align 8
@STRING_SIZE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @_bfd_coff_internal_syment_name(i32* %0, %struct.internal_syment* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.internal_syment*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.internal_syment* %1, %struct.internal_syment** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load %struct.internal_syment*, %struct.internal_syment** %6, align 8
  %10 = getelementptr inbounds %struct.internal_syment, %struct.internal_syment* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %3
  %16 = load %struct.internal_syment*, %struct.internal_syment** %6, align 8
  %17 = getelementptr inbounds %struct.internal_syment, %struct.internal_syment* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %34

22:                                               ; preds = %15, %3
  %23 = load i8*, i8** %7, align 8
  %24 = load %struct.internal_syment*, %struct.internal_syment** %6, align 8
  %25 = getelementptr inbounds %struct.internal_syment, %struct.internal_syment* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load i64, i64* @SYMNMLEN, align 8
  %29 = call i32 @memcpy(i8* %23, i32 %27, i64 %28)
  %30 = load i8*, i8** %7, align 8
  %31 = load i64, i64* @SYMNMLEN, align 8
  %32 = getelementptr inbounds i8, i8* %30, i64 %31
  store i8 0, i8* %32, align 1
  %33 = load i8*, i8** %7, align 8
  store i8* %33, i8** %4, align 8
  br label %63

34:                                               ; preds = %15
  %35 = load %struct.internal_syment*, %struct.internal_syment** %6, align 8
  %36 = getelementptr inbounds %struct.internal_syment, %struct.internal_syment* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @STRING_SIZE_SIZE, align 8
  %41 = icmp sge i64 %39, %40
  %42 = zext i1 %41 to i32
  %43 = call i32 @BFD_ASSERT(i32 %42)
  %44 = load i32*, i32** %5, align 8
  %45 = call i8* @obj_coff_strings(i32* %44)
  store i8* %45, i8** %8, align 8
  %46 = load i8*, i8** %8, align 8
  %47 = icmp eq i8* %46, null
  br i1 %47, label %48, label %55

48:                                               ; preds = %34
  %49 = load i32*, i32** %5, align 8
  %50 = call i8* @_bfd_coff_read_string_table(i32* %49)
  store i8* %50, i8** %8, align 8
  %51 = load i8*, i8** %8, align 8
  %52 = icmp eq i8* %51, null
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  store i8* null, i8** %4, align 8
  br label %63

54:                                               ; preds = %48
  br label %55

55:                                               ; preds = %54, %34
  %56 = load i8*, i8** %8, align 8
  %57 = load %struct.internal_syment*, %struct.internal_syment** %6, align 8
  %58 = getelementptr inbounds %struct.internal_syment, %struct.internal_syment* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds i8, i8* %56, i64 %61
  store i8* %62, i8** %4, align 8
  br label %63

63:                                               ; preds = %55, %53, %22
  %64 = load i8*, i8** %4, align 8
  ret i8* %64
}

declare dso_local i32 @memcpy(i8*, i32, i64) #1

declare dso_local i32 @BFD_ASSERT(i32) #1

declare dso_local i8* @obj_coff_strings(i32*) #1

declare dso_local i8* @_bfd_coff_read_string_table(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
