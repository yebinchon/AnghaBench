; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/panel/extr_panel.c_phys_scan_contacts.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/panel/extr_panel.c_phys_scan_contacts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@phys_curr = common dso_local global i32 0, align 4
@phys_prev = common dso_local global i32 0, align 4
@phys_read = common dso_local global i32 0, align 4
@phys_read_prev = common dso_local global i32 0, align 4
@pprt = common dso_local global i32 0, align 4
@scan_mask_o = common dso_local global i8 0, align 1
@scan_mask_i = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @phys_scan_contacts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @phys_scan_contacts() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = load i32, i32* @phys_curr, align 4
  store i32 %6, i32* @phys_prev, align 4
  %7 = load i32, i32* @phys_read, align 4
  store i32 %7, i32* @phys_read_prev, align 4
  store i32 0, i32* @phys_read, align 4
  %8 = load i32, i32* @pprt, align 4
  %9 = call signext i8 @r_dtr(i32 %8)
  %10 = sext i8 %9 to i32
  %11 = load i8, i8* @scan_mask_o, align 1
  %12 = sext i8 %11 to i32
  %13 = or i32 %10, %12
  %14 = trunc i32 %13 to i8
  store i8 %14, i8* %3, align 1
  %15 = load i32, i32* @pprt, align 4
  %16 = load i8, i8* %3, align 1
  %17 = sext i8 %16 to i32
  %18 = load i8, i8* @scan_mask_o, align 1
  %19 = sext i8 %18 to i32
  %20 = xor i32 %19, -1
  %21 = and i32 %17, %20
  %22 = trunc i32 %21 to i8
  %23 = call i32 @w_dtr(i32 %15, i8 signext %22)
  %24 = load i32, i32* @pprt, align 4
  %25 = call i32 @r_str(i32 %24)
  %26 = call signext i8 @PNL_PINPUT(i32 %25)
  %27 = sext i8 %26 to i32
  %28 = load i8, i8* @scan_mask_i, align 1
  %29 = sext i8 %28 to i32
  %30 = and i32 %27, %29
  %31 = trunc i32 %30 to i8
  store i8 %31, i8* %4, align 1
  %32 = load i32, i32* @pprt, align 4
  %33 = load i8, i8* %3, align 1
  %34 = call i32 @w_dtr(i32 %32, i8 signext %33)
  %35 = load i32, i32* @pprt, align 4
  %36 = call i32 @r_str(i32 %35)
  %37 = call signext i8 @PNL_PINPUT(i32 %36)
  %38 = sext i8 %37 to i32
  %39 = load i8, i8* @scan_mask_i, align 1
  %40 = sext i8 %39 to i32
  %41 = and i32 %38, %40
  %42 = trunc i32 %41 to i8
  store i8 %42, i8* %5, align 1
  %43 = load i8, i8* %5, align 1
  %44 = sext i8 %43 to i32
  %45 = shl i32 %44, 40
  %46 = load i32, i32* @phys_read, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* @phys_read, align 4
  %48 = load i8, i8* %4, align 1
  %49 = sext i8 %48 to i32
  %50 = load i8, i8* %5, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp ne i32 %49, %51
  br i1 %52, label %53, label %98

53:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %54

54:                                               ; preds = %91, %53
  %55 = load i32, i32* %1, align 4
  %56 = icmp slt i32 %55, 8
  br i1 %56, label %57, label %94

57:                                               ; preds = %54
  %58 = load i32, i32* %1, align 4
  %59 = shl i32 1, %58
  store i32 %59, i32* %2, align 4
  %60 = load i8, i8* @scan_mask_o, align 1
  %61 = sext i8 %60 to i32
  %62 = load i32, i32* %2, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %57
  br label %91

66:                                               ; preds = %57
  %67 = load i32, i32* @pprt, align 4
  %68 = load i8, i8* %3, align 1
  %69 = sext i8 %68 to i32
  %70 = load i32, i32* %2, align 4
  %71 = xor i32 %70, -1
  %72 = and i32 %69, %71
  %73 = trunc i32 %72 to i8
  %74 = call i32 @w_dtr(i32 %67, i8 signext %73)
  %75 = load i32, i32* @pprt, align 4
  %76 = call i32 @r_str(i32 %75)
  %77 = call signext i8 @PNL_PINPUT(i32 %76)
  %78 = sext i8 %77 to i32
  %79 = load i8, i8* %5, align 1
  %80 = sext i8 %79 to i32
  %81 = xor i32 %80, -1
  %82 = and i32 %78, %81
  %83 = trunc i32 %82 to i8
  store i8 %83, i8* %4, align 1
  %84 = load i8, i8* %4, align 1
  %85 = sext i8 %84 to i32
  %86 = load i32, i32* %1, align 4
  %87 = mul nsw i32 5, %86
  %88 = shl i32 %85, %87
  %89 = load i32, i32* @phys_read, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* @phys_read, align 4
  br label %91

91:                                               ; preds = %66, %65
  %92 = load i32, i32* %1, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %1, align 4
  br label %54

94:                                               ; preds = %54
  %95 = load i32, i32* @pprt, align 4
  %96 = load i8, i8* %3, align 1
  %97 = call i32 @w_dtr(i32 %95, i8 signext %96)
  br label %98

98:                                               ; preds = %94, %0
  %99 = load i32, i32* @phys_prev, align 4
  %100 = load i32, i32* @phys_read, align 4
  %101 = load i32, i32* @phys_read_prev, align 4
  %102 = xor i32 %100, %101
  %103 = and i32 %99, %102
  %104 = load i32, i32* @phys_read, align 4
  %105 = load i32, i32* @phys_read, align 4
  %106 = load i32, i32* @phys_read_prev, align 4
  %107 = xor i32 %105, %106
  %108 = xor i32 %107, -1
  %109 = and i32 %104, %108
  %110 = or i32 %103, %109
  store i32 %110, i32* @phys_curr, align 4
  ret void
}

declare dso_local signext i8 @r_dtr(i32) #1

declare dso_local i32 @w_dtr(i32, i8 signext) #1

declare dso_local signext i8 @PNL_PINPUT(i32) #1

declare dso_local i32 @r_str(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
