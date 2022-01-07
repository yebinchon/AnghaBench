; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_mep-opc.c_init_mep_all_cop_isas_mask.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_mep-opc.c_init_mep_all_cop_isas_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@mep_all_cop_isas_mask = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@ISA_MAX = common dso_local global i32 0, align 4
@ISA_EXT_COP2_16 = common dso_local global i32 0, align 4
@ISA_EXT_COP2_32 = common dso_local global i32 0, align 4
@ISA_EXT_COP2_48 = common dso_local global i32 0, align 4
@ISA_EXT_COP2_64 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_mep_all_cop_isas_mask() #0 {
  %1 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mep_all_cop_isas_mask, i32 0, i32 0), align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  br label %15

4:                                                ; preds = %0
  %5 = load i32, i32* @ISA_MAX, align 4
  %6 = call i32 @cgen_bitset_init(%struct.TYPE_4__* @mep_all_cop_isas_mask, i32 %5)
  %7 = load i32, i32* @ISA_EXT_COP2_16, align 4
  %8 = call i32 @cgen_bitset_add(%struct.TYPE_4__* @mep_all_cop_isas_mask, i32 %7)
  %9 = load i32, i32* @ISA_EXT_COP2_32, align 4
  %10 = call i32 @cgen_bitset_add(%struct.TYPE_4__* @mep_all_cop_isas_mask, i32 %9)
  %11 = load i32, i32* @ISA_EXT_COP2_48, align 4
  %12 = call i32 @cgen_bitset_add(%struct.TYPE_4__* @mep_all_cop_isas_mask, i32 %11)
  %13 = load i32, i32* @ISA_EXT_COP2_64, align 4
  %14 = call i32 @cgen_bitset_add(%struct.TYPE_4__* @mep_all_cop_isas_mask, i32 %13)
  br label %15

15:                                               ; preds = %4, %3
  ret void
}

declare dso_local i32 @cgen_bitset_init(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @cgen_bitset_add(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
