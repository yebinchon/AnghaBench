; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-mips.c_macro_build_jalr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-mips.c_macro_build_jalr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@HAVE_NEWABI = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"jalr\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"d,s\00", align 1
@RA = common dso_local global i32 0, align 4
@PIC_CALL_REG = common dso_local global i32 0, align 4
@frag_now = common dso_local global %struct.TYPE_3__* null, align 8
@FALSE = common dso_local global i32 0, align 4
@BFD_RELOC_MIPS_JALR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @macro_build_jalr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @macro_build_jalr(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  store i32* %0, i32** %2, align 8
  store i8* null, i8** %3, align 8
  %4 = load i64, i64* @HAVE_NEWABI, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = call i32 @frag_grow(i32 8)
  %8 = call i8* @frag_more(i32 0)
  store i8* %8, i8** %3, align 8
  br label %9

9:                                                ; preds = %6, %1
  %10 = load i32, i32* @RA, align 4
  %11 = load i32, i32* @PIC_CALL_REG, align 4
  %12 = call i32 @macro_build(i32* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %10, i32 %11)
  %13 = load i64, i64* @HAVE_NEWABI, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %28

15:                                               ; preds = %9
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** @frag_now, align 8
  %17 = load i8*, i8** %3, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** @frag_now, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = sext i32 %20 to i64
  %22 = sub i64 0, %21
  %23 = getelementptr inbounds i8, i8* %17, i64 %22
  %24 = load i32*, i32** %2, align 8
  %25 = load i32, i32* @FALSE, align 4
  %26 = load i32, i32* @BFD_RELOC_MIPS_JALR, align 4
  %27 = call i32 @fix_new_exp(%struct.TYPE_3__* %16, i8* %23, i32 4, i32* %24, i32 %25, i32 %26)
  br label %28

28:                                               ; preds = %15, %9
  ret void
}

declare dso_local i32 @frag_grow(i32) #1

declare dso_local i8* @frag_more(i32) #1

declare dso_local i32 @macro_build(i32*, i8*, i8*, i32, i32) #1

declare dso_local i32 @fix_new_exp(%struct.TYPE_3__*, i8*, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
