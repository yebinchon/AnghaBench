; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netlink/extr_genetlink.c_genl_generate_id.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netlink/extr_genetlink.c_genl_generate_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@genl_generate_id.id_gen_idx = internal global i64 0, align 8
@GENL_MIN_ID = common dso_local global i64 0, align 8
@GENL_MAX_ID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 ()* @genl_generate_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @genl_generate_id() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  br label %3

3:                                                ; preds = %19, %0
  %4 = load i64, i64* @genl_generate_id.id_gen_idx, align 8
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = load i64, i64* @GENL_MIN_ID, align 8
  store i64 %7, i64* @genl_generate_id.id_gen_idx, align 8
  br label %8

8:                                                ; preds = %6, %3
  %9 = load i64, i64* @genl_generate_id.id_gen_idx, align 8
  %10 = add nsw i64 %9, 1
  store i64 %10, i64* @genl_generate_id.id_gen_idx, align 8
  %11 = load i64, i64* @GENL_MAX_ID, align 8
  %12 = icmp sgt i64 %10, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %8
  %14 = load i32, i32* %2, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %13
  store i32 1, i32* %2, align 4
  store i64 0, i64* @genl_generate_id.id_gen_idx, align 8
  br label %19

17:                                               ; preds = %13
  store i64 0, i64* %1, align 8
  br label %25

18:                                               ; preds = %8
  br label %19

19:                                               ; preds = %18, %16
  %20 = load i64, i64* @genl_generate_id.id_gen_idx, align 8
  %21 = call i64 @genl_family_find_byid(i64 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %3, label %23

23:                                               ; preds = %19
  %24 = load i64, i64* @genl_generate_id.id_gen_idx, align 8
  store i64 %24, i64* %1, align 8
  br label %25

25:                                               ; preds = %23, %17
  %26 = load i64, i64* %1, align 8
  ret i64 %26
}

declare dso_local i64 @genl_family_find_byid(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
