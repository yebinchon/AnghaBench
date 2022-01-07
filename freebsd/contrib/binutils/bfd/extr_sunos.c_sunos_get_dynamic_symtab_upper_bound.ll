; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_sunos.c_sunos_get_dynamic_symtab_upper_bound.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_sunos.c_sunos_get_dynamic_symtab_upper_bound.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sunos_dynamic_info = type { i32, i32 }

@bfd_error_no_symbols = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*)* @sunos_get_dynamic_symtab_upper_bound to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @sunos_get_dynamic_symtab_upper_bound(i32* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.sunos_dynamic_info*, align 8
  store i32* %0, i32** %3, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = call i32 @sunos_read_dynamic_info(i32* %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store i64 -1, i64* %2, align 8
  br label %27

9:                                                ; preds = %1
  %10 = load i32*, i32** %3, align 8
  %11 = call i64 @obj_aout_dynamic_info(i32* %10)
  %12 = inttoptr i64 %11 to %struct.sunos_dynamic_info*
  store %struct.sunos_dynamic_info* %12, %struct.sunos_dynamic_info** %4, align 8
  %13 = load %struct.sunos_dynamic_info*, %struct.sunos_dynamic_info** %4, align 8
  %14 = getelementptr inbounds %struct.sunos_dynamic_info, %struct.sunos_dynamic_info* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %9
  %18 = load i32, i32* @bfd_error_no_symbols, align 4
  %19 = call i32 @bfd_set_error(i32 %18)
  store i64 -1, i64* %2, align 8
  br label %27

20:                                               ; preds = %9
  %21 = load %struct.sunos_dynamic_info*, %struct.sunos_dynamic_info** %4, align 8
  %22 = getelementptr inbounds %struct.sunos_dynamic_info, %struct.sunos_dynamic_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %23, 1
  %25 = sext i32 %24 to i64
  %26 = mul i64 %25, 8
  store i64 %26, i64* %2, align 8
  br label %27

27:                                               ; preds = %20, %17, %8
  %28 = load i64, i64* %2, align 8
  ret i64 %28
}

declare dso_local i32 @sunos_read_dynamic_info(i32*) #1

declare dso_local i64 @obj_aout_dynamic_info(i32*) #1

declare dso_local i32 @bfd_set_error(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
