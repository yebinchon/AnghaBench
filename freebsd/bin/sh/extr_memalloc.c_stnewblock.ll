; ModuleID = '/home/carl/AnghaBench/freebsd/bin/sh/extr_memalloc.c_stnewblock.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/sh/extr_memalloc.c_stnewblock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stack_block = type { %struct.stack_block* }

@MINSIZE = common dso_local global i32 0, align 4
@INTOFF = common dso_local global i32 0, align 4
@stackp = common dso_local global %struct.stack_block* null, align 8
@stacknxt = common dso_local global i8* null, align 8
@stacknleft = common dso_local global i32 0, align 4
@sstrend = common dso_local global i8* null, align 8
@INTON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @stnewblock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stnewblock(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.stack_block*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = load i32, i32* @MINSIZE, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load i32, i32* @MINSIZE, align 4
  store i32 %9, i32* %2, align 4
  br label %10

10:                                               ; preds = %8, %1
  %11 = call i32 @ALIGN(i32 8)
  %12 = load i32, i32* %2, align 4
  %13 = call i32 @ALIGN(i32 %12)
  %14 = add nsw i32 %11, %13
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* @INTOFF, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call %struct.stack_block* @ckmalloc(i32 %16)
  store %struct.stack_block* %17, %struct.stack_block** %3, align 8
  %18 = load %struct.stack_block*, %struct.stack_block** @stackp, align 8
  %19 = load %struct.stack_block*, %struct.stack_block** %3, align 8
  %20 = getelementptr inbounds %struct.stack_block, %struct.stack_block* %19, i32 0, i32 0
  store %struct.stack_block* %18, %struct.stack_block** %20, align 8
  %21 = load %struct.stack_block*, %struct.stack_block** %3, align 8
  %22 = call i8* @SPACE(%struct.stack_block* %21)
  store i8* %22, i8** @stacknxt, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = load i8*, i8** @stacknxt, align 8
  %26 = load %struct.stack_block*, %struct.stack_block** %3, align 8
  %27 = bitcast %struct.stack_block* %26 to i8*
  %28 = ptrtoint i8* %25 to i64
  %29 = ptrtoint i8* %27 to i64
  %30 = sub i64 %28, %29
  %31 = sub nsw i64 %24, %30
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* @stacknleft, align 4
  %33 = load i8*, i8** @stacknxt, align 8
  %34 = load i32, i32* @stacknleft, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %33, i64 %35
  store i8* %36, i8** @sstrend, align 8
  %37 = load %struct.stack_block*, %struct.stack_block** %3, align 8
  store %struct.stack_block* %37, %struct.stack_block** @stackp, align 8
  %38 = load i32, i32* @INTON, align 4
  ret void
}

declare dso_local i32 @ALIGN(i32) #1

declare dso_local %struct.stack_block* @ckmalloc(i32) #1

declare dso_local i8* @SPACE(%struct.stack_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
