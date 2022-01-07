; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/elfcopy/extr_segments.c_setup_phdr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/elfcopy/extr_segments.c_setup_phdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elfcopy = type { i64, i64, i64, i32, i32 }
%struct.segment = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32 }

@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"elf_getphnum failed: %s\00", align 1
@STRIP_NONDEBUG = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"gelf_getphdr failed: %s\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"calloc failed\00", align 1
@seg_list = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @setup_phdr(%struct.elfcopy* %0) #0 {
  %2 = alloca %struct.elfcopy*, align 8
  %3 = alloca %struct.segment*, align 8
  %4 = alloca %struct.TYPE_4__, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.elfcopy* %0, %struct.elfcopy** %2, align 8
  %7 = load %struct.elfcopy*, %struct.elfcopy** %2, align 8
  %8 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 4
  %10 = call i64 @elf_getphnum(i32 %9, i64* %5)
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load i32, i32* @EXIT_FAILURE, align 4
  %14 = call i32 @elf_errmsg(i32 -1)
  %15 = call i32 @errx(i32 %13, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %14)
  br label %16

16:                                               ; preds = %12, %1
  %17 = load i64, i64* %5, align 8
  %18 = load %struct.elfcopy*, %struct.elfcopy** %2, align 8
  %19 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %18, i32 0, i32 1
  store i64 %17, i64* %19, align 8
  %20 = load %struct.elfcopy*, %struct.elfcopy** %2, align 8
  %21 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %20, i32 0, i32 0
  store i64 %17, i64* %21, align 8
  %22 = load i64, i64* %5, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  br label %89

25:                                               ; preds = %16
  %26 = load %struct.elfcopy*, %struct.elfcopy** %2, align 8
  %27 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @STRIP_NONDEBUG, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load %struct.elfcopy*, %struct.elfcopy** %2, align 8
  %33 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %32, i32 0, i32 0
  store i64 0, i64* %33, align 8
  br label %89

34:                                               ; preds = %25
  store i64 0, i64* %6, align 8
  br label %35

35:                                               ; preds = %86, %34
  %36 = load i64, i64* %6, align 8
  %37 = load i64, i64* %5, align 8
  %38 = icmp ult i64 %36, %37
  br i1 %38, label %39, label %89

39:                                               ; preds = %35
  %40 = load %struct.elfcopy*, %struct.elfcopy** %2, align 8
  %41 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = load i64, i64* %6, align 8
  %44 = call %struct.TYPE_4__* @gelf_getphdr(i32 %42, i64 %43, %struct.TYPE_4__* %4)
  %45 = icmp ne %struct.TYPE_4__* %44, %4
  br i1 %45, label %46, label %50

46:                                               ; preds = %39
  %47 = load i32, i32* @EXIT_FAILURE, align 4
  %48 = call i32 @elf_errmsg(i32 -1)
  %49 = call i32 @errx(i32 %47, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  br label %50

50:                                               ; preds = %46, %39
  %51 = call %struct.segment* @calloc(i32 1, i32 24)
  store %struct.segment* %51, %struct.segment** %3, align 8
  %52 = icmp eq %struct.segment* %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load i32, i32* @EXIT_FAILURE, align 4
  %55 = call i32 @err(i32 %54, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  br label %56

56:                                               ; preds = %53, %50
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 5
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.segment*, %struct.segment** %3, align 8
  %60 = getelementptr inbounds %struct.segment, %struct.segment* %59, i32 0, i32 5
  store i32 %58, i32* %60, align 4
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 4
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.segment*, %struct.segment** %3, align 8
  %64 = getelementptr inbounds %struct.segment, %struct.segment* %63, i32 0, i32 4
  store i32 %62, i32* %64, align 4
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.segment*, %struct.segment** %3, align 8
  %68 = getelementptr inbounds %struct.segment, %struct.segment* %67, i32 0, i32 3
  store i32 %66, i32* %68, align 4
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.segment*, %struct.segment** %3, align 8
  %72 = getelementptr inbounds %struct.segment, %struct.segment* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 4
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.segment*, %struct.segment** %3, align 8
  %76 = getelementptr inbounds %struct.segment, %struct.segment* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.segment*, %struct.segment** %3, align 8
  %80 = getelementptr inbounds %struct.segment, %struct.segment* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 4
  %81 = load %struct.elfcopy*, %struct.elfcopy** %2, align 8
  %82 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %81, i32 0, i32 3
  %83 = load %struct.segment*, %struct.segment** %3, align 8
  %84 = load i32, i32* @seg_list, align 4
  %85 = call i32 @STAILQ_INSERT_TAIL(i32* %82, %struct.segment* %83, i32 %84)
  br label %86

86:                                               ; preds = %56
  %87 = load i64, i64* %6, align 8
  %88 = add i64 %87, 1
  store i64 %88, i64* %6, align 8
  br label %35

89:                                               ; preds = %24, %31, %35
  ret void
}

declare dso_local i64 @elf_getphnum(i32, i64*) #1

declare dso_local i32 @errx(i32, i8*, i32) #1

declare dso_local i32 @elf_errmsg(i32) #1

declare dso_local %struct.TYPE_4__* @gelf_getphdr(i32, i64, %struct.TYPE_4__*) #1

declare dso_local %struct.segment* @calloc(i32, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.segment*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
