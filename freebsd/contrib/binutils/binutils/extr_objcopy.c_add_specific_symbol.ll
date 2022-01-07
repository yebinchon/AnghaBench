; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_objcopy.c_add_specific_symbol.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_objcopy.c_add_specific_symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symlist = type { i8*, %struct.symlist* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.symlist**)* @add_specific_symbol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_specific_symbol(i8* %0, %struct.symlist** %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.symlist**, align 8
  %5 = alloca %struct.symlist*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.symlist** %1, %struct.symlist*** %4, align 8
  %6 = call %struct.symlist* @xmalloc(i32 16)
  store %struct.symlist* %6, %struct.symlist** %5, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = load %struct.symlist*, %struct.symlist** %5, align 8
  %9 = getelementptr inbounds %struct.symlist, %struct.symlist* %8, i32 0, i32 0
  store i8* %7, i8** %9, align 8
  %10 = load %struct.symlist**, %struct.symlist*** %4, align 8
  %11 = load %struct.symlist*, %struct.symlist** %10, align 8
  %12 = load %struct.symlist*, %struct.symlist** %5, align 8
  %13 = getelementptr inbounds %struct.symlist, %struct.symlist* %12, i32 0, i32 1
  store %struct.symlist* %11, %struct.symlist** %13, align 8
  %14 = load %struct.symlist*, %struct.symlist** %5, align 8
  %15 = load %struct.symlist**, %struct.symlist*** %4, align 8
  store %struct.symlist* %14, %struct.symlist** %15, align 8
  ret void
}

declare dso_local %struct.symlist* @xmalloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
