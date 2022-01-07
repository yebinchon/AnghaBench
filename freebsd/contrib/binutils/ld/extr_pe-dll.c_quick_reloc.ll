; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_pe-dll.c_quick_reloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_pe-dll.c_quick_reloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64, i32, i64 }

@relcount = common dso_local global i32 0, align 4
@relsize = common dso_local global i32 0, align 4
@reltab = common dso_local global %struct.TYPE_5__* null, align 8
@symtab = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, i32)* @quick_reloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @quick_reloc(i32* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* @relcount, align 4
  %10 = load i32, i32* @relsize, align 4
  %11 = sub nsw i32 %10, 1
  %12 = icmp sge i32 %9, %11
  br i1 %12, label %13, label %32

13:                                               ; preds = %4
  %14 = load i32, i32* @relsize, align 4
  %15 = add nsw i32 %14, 10
  store i32 %15, i32* @relsize, align 4
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** @reltab, align 8
  %17 = icmp ne %struct.TYPE_5__* %16, null
  br i1 %17, label %18, label %25

18:                                               ; preds = %13
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** @reltab, align 8
  %20 = load i32, i32* @relsize, align 4
  %21 = sext i32 %20 to i64
  %22 = mul i64 %21, 4
  %23 = trunc i64 %22 to i32
  %24 = call %struct.TYPE_5__* @xrealloc(%struct.TYPE_5__* %19, i32 %23)
  store %struct.TYPE_5__* %24, %struct.TYPE_5__** @reltab, align 8
  br label %31

25:                                               ; preds = %13
  %26 = load i32, i32* @relsize, align 4
  %27 = sext i32 %26 to i64
  %28 = mul i64 %27, 4
  %29 = trunc i64 %28 to i32
  %30 = call %struct.TYPE_5__* @xmalloc(i32 %29)
  store %struct.TYPE_5__* %30, %struct.TYPE_5__** @reltab, align 8
  br label %31

31:                                               ; preds = %25, %18
  br label %32

32:                                               ; preds = %31, %4
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** @reltab, align 8
  %35 = load i32, i32* @relcount, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  store i32 %33, i32* %38, align 8
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** @reltab, align 8
  %40 = load i32, i32* @relcount, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 3
  store i64 0, i64* %43, align 8
  %44 = load i32*, i32** %5, align 8
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @bfd_reloc_type_lookup(i32* %44, i32 %45)
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** @reltab, align 8
  %48 = load i32, i32* @relcount, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 2
  store i32 %46, i32* %51, align 8
  %52 = load i64, i64* @symtab, align 8
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = add nsw i64 %52, %54
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** @reltab, align 8
  %57 = load i32, i32* @relcount, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  store i64 %55, i64* %60, align 8
  %61 = load i32, i32* @relcount, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* @relcount, align 4
  ret void
}

declare dso_local %struct.TYPE_5__* @xrealloc(%struct.TYPE_5__*, i32) #1

declare dso_local %struct.TYPE_5__* @xmalloc(i32) #1

declare dso_local i32 @bfd_reloc_type_lookup(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
