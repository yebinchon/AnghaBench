; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jbd2/extr_revoke.c_hash.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jbd2/extr_revoke.c_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.jbd2_revoke_table_s* }
%struct.jbd2_revoke_table_s = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i64)* @hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hash(%struct.TYPE_3__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.jbd2_revoke_table_s*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load %struct.jbd2_revoke_table_s*, %struct.jbd2_revoke_table_s** %9, align 8
  store %struct.jbd2_revoke_table_s* %10, %struct.jbd2_revoke_table_s** %5, align 8
  %11 = load %struct.jbd2_revoke_table_s*, %struct.jbd2_revoke_table_s** %5, align 8
  %12 = getelementptr inbounds %struct.jbd2_revoke_table_s, %struct.jbd2_revoke_table_s* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %6, align 4
  %14 = load i64, i64* %4, align 8
  %15 = trunc i64 %14 to i32
  %16 = load i64, i64* %4, align 8
  %17 = lshr i64 %16, 31
  %18 = lshr i64 %17, 1
  %19 = trunc i64 %18 to i32
  %20 = xor i32 %15, %19
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %6, align 4
  %23 = sub nsw i32 %22, 6
  %24 = shl i32 %21, %23
  %25 = load i32, i32* %7, align 4
  %26 = ashr i32 %25, 13
  %27 = xor i32 %24, %26
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %6, align 4
  %30 = sub nsw i32 %29, 12
  %31 = shl i32 %28, %30
  %32 = xor i32 %27, %31
  %33 = load %struct.jbd2_revoke_table_s*, %struct.jbd2_revoke_table_s** %5, align 8
  %34 = getelementptr inbounds %struct.jbd2_revoke_table_s, %struct.jbd2_revoke_table_s* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = sub nsw i32 %35, 1
  %37 = and i32 %32, %36
  ret i32 %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
