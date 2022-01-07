; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_policydb.c_rangetr_hash.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_policydb.c_rangetr_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hashtab = type { i32 }
%struct.range_trans = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hashtab*, i8*)* @rangetr_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rangetr_hash(%struct.hashtab* %0, i8* %1) #0 {
  %3 = alloca %struct.hashtab*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.range_trans*, align 8
  store %struct.hashtab* %0, %struct.hashtab** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.range_trans*
  store %struct.range_trans* %7, %struct.range_trans** %5, align 8
  %8 = load %struct.range_trans*, %struct.range_trans** %5, align 8
  %9 = getelementptr inbounds %struct.range_trans, %struct.range_trans* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.range_trans*, %struct.range_trans** %5, align 8
  %12 = getelementptr inbounds %struct.range_trans, %struct.range_trans* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = shl i32 %13, 3
  %15 = add nsw i32 %10, %14
  %16 = load %struct.range_trans*, %struct.range_trans** %5, align 8
  %17 = getelementptr inbounds %struct.range_trans, %struct.range_trans* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = shl i32 %18, 5
  %20 = add nsw i32 %15, %19
  %21 = load %struct.hashtab*, %struct.hashtab** %3, align 8
  %22 = getelementptr inbounds %struct.hashtab, %struct.hashtab* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = sub nsw i32 %23, 1
  %25 = and i32 %20, %24
  ret i32 %25
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
