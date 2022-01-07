; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libiberty/extr_hashtab.c_htab_mod_m2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libiberty/extr_hashtab.c_htab_mod_m2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.prime_ent = type { i32, i32, i64 }
%struct.TYPE_3__ = type { i64 }

@prime_tab = common dso_local global %struct.prime_ent* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, %struct.TYPE_3__*)* @htab_mod_m2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @htab_mod_m2(i64 %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca %struct.prime_ent*, align 8
  store i64 %0, i64* %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %6 = load %struct.prime_ent*, %struct.prime_ent** @prime_tab, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = getelementptr inbounds %struct.prime_ent, %struct.prime_ent* %6, i64 %9
  store %struct.prime_ent* %10, %struct.prime_ent** %5, align 8
  %11 = load i64, i64* %3, align 8
  %12 = load %struct.prime_ent*, %struct.prime_ent** %5, align 8
  %13 = getelementptr inbounds %struct.prime_ent, %struct.prime_ent* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = sub nsw i64 %14, 2
  %16 = load %struct.prime_ent*, %struct.prime_ent** %5, align 8
  %17 = getelementptr inbounds %struct.prime_ent, %struct.prime_ent* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.prime_ent*, %struct.prime_ent** %5, align 8
  %20 = getelementptr inbounds %struct.prime_ent, %struct.prime_ent* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i64 @htab_mod_1(i64 %11, i64 %15, i32 %18, i32 %21)
  %23 = add nsw i64 1, %22
  ret i64 %23
}

declare dso_local i64 @htab_mod_1(i64, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
