; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_sysdump.c_getone.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_sysdump.c_getone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IT_cs = type { i32 }
%struct.IT_dln = type { i32 }
%struct.IT_hd = type { i32 }
%struct.IT_dar = type { i32 }
%struct.IT_dsy = type { i32 }
%struct.IT_dfp = type { i32 }
%struct.IT_dso = type { i32 }
%struct.IT_dpt = type { i32 }
%struct.IT_den = type { i32 }
%struct.IT_dbt = type { i32 }
%struct.IT_dty = type { i32 }
%struct.IT_un = type { i32 }
%struct.IT_sc = type { i32 }
%struct.IT_er = type { i32 }
%struct.IT_ed = type { i32 }
%struct.IT_sh = type { i32 }
%struct.IT_ob = type { i32 }
%struct.IT_rl = type { i32 }
%struct.IT_du = type { i32 }
%struct.IT_dus = type { i32 }
%struct.IT_dul = type { i32 }
%struct.IT_dss = type { i32 }
%struct.IT_hs = type { i32 }
%struct.IT_dps = type { i32 }
%struct.IT_dds = type { i32 }

@file = common dso_local global i32 0, align 4
@code = common dso_local global i32 0, align 4
@addrsize = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"GOT A %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @getone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getone(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.IT_cs, align 4
  %6 = alloca %struct.IT_dln, align 4
  %7 = alloca %struct.IT_hd, align 4
  %8 = alloca %struct.IT_dar, align 4
  %9 = alloca %struct.IT_dsy, align 4
  %10 = alloca %struct.IT_dfp, align 4
  %11 = alloca %struct.IT_dso, align 4
  %12 = alloca %struct.IT_dpt, align 4
  %13 = alloca %struct.IT_den, align 4
  %14 = alloca %struct.IT_dbt, align 4
  %15 = alloca %struct.IT_dty, align 4
  %16 = alloca %struct.IT_un, align 4
  %17 = alloca %struct.IT_sc, align 4
  %18 = alloca %struct.IT_er, align 4
  %19 = alloca %struct.IT_ed, align 4
  %20 = alloca %struct.IT_sh, align 4
  %21 = alloca %struct.IT_ob, align 4
  %22 = alloca %struct.IT_rl, align 4
  %23 = alloca %struct.IT_du, align 4
  %24 = alloca %struct.IT_dus, align 4
  %25 = alloca %struct.IT_dul, align 4
  %26 = alloca %struct.IT_dss, align 4
  %27 = alloca %struct.IT_hs, align 4
  %28 = alloca %struct.IT_dps, align 4
  %29 = alloca %struct.IT_dds, align 4
  store i32 %0, i32* %3, align 4
  %30 = load i32, i32* @file, align 4
  %31 = call i32 @getc(i32 %30)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  store i32 %32, i32* @code, align 4
  %33 = load i32, i32* %4, align 4
  %34 = and i32 %33, 127
  %35 = load i32, i32* %3, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %1
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @file, align 4
  %40 = call i32 @ungetc(i32 %38, i32 %39)
  store i32 0, i32* %2, align 4
  br label %128

41:                                               ; preds = %1
  %42 = load i32, i32* %4, align 4
  %43 = and i32 %42, 127
  switch i32 %43, label %124 [
    i32 153, label %44
    i32 147, label %47
    i32 135, label %50
    i32 152, label %55
    i32 142, label %58
    i32 148, label %61
    i32 144, label %64
    i32 145, label %67
    i32 149, label %70
    i32 151, label %73
    i32 141, label %76
    i32 128, label %79
    i32 131, label %82
    i32 136, label %85
    i32 137, label %88
    i32 130, label %91
    i32 133, label %94
    i32 132, label %97
    i32 140, label %100
    i32 138, label %103
    i32 139, label %106
    i32 143, label %109
    i32 134, label %112
    i32 146, label %115
    i32 129, label %118
    i32 150, label %121
  ]

44:                                               ; preds = %41
  %45 = call i32 @sysroff_swap_cs_in(%struct.IT_cs* %5)
  %46 = call i32 @sysroff_print_cs_out(%struct.IT_cs* %5)
  br label %127

47:                                               ; preds = %41
  %48 = call i32 @sysroff_swap_dln_in(%struct.IT_dln* %6)
  %49 = call i32 @sysroff_print_dln_out(%struct.IT_dln* %6)
  br label %127

50:                                               ; preds = %41
  %51 = call i32 @sysroff_swap_hd_in(%struct.IT_hd* %7)
  %52 = getelementptr inbounds %struct.IT_hd, %struct.IT_hd* %7, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* @addrsize, align 4
  %54 = call i32 @sysroff_print_hd_out(%struct.IT_hd* %7)
  br label %127

55:                                               ; preds = %41
  %56 = call i32 @sysroff_swap_dar_in(%struct.IT_dar* %8)
  %57 = call i32 @sysroff_print_dar_out(%struct.IT_dar* %8)
  br label %127

58:                                               ; preds = %41
  %59 = call i32 @sysroff_swap_dsy_in(%struct.IT_dsy* %9)
  %60 = call i32 @sysroff_print_dsy_out(%struct.IT_dsy* %9)
  br label %127

61:                                               ; preds = %41
  %62 = call i32 @sysroff_swap_dfp_in(%struct.IT_dfp* %10)
  %63 = call i32 @sysroff_print_dfp_out(%struct.IT_dfp* %10)
  br label %127

64:                                               ; preds = %41
  %65 = call i32 @sysroff_swap_dso_in(%struct.IT_dso* %11)
  %66 = call i32 @sysroff_print_dso_out(%struct.IT_dso* %11)
  br label %127

67:                                               ; preds = %41
  %68 = call i32 @sysroff_swap_dpt_in(%struct.IT_dpt* %12)
  %69 = call i32 @sysroff_print_dpt_out(%struct.IT_dpt* %12)
  br label %127

70:                                               ; preds = %41
  %71 = call i32 @sysroff_swap_den_in(%struct.IT_den* %13)
  %72 = call i32 @sysroff_print_den_out(%struct.IT_den* %13)
  br label %127

73:                                               ; preds = %41
  %74 = call i32 @sysroff_swap_dbt_in(%struct.IT_dbt* %14)
  %75 = call i32 @sysroff_print_dbt_out(%struct.IT_dbt* %14)
  br label %127

76:                                               ; preds = %41
  %77 = call i32 @sysroff_swap_dty_in(%struct.IT_dty* %15)
  %78 = call i32 @sysroff_print_dty_out(%struct.IT_dty* %15)
  br label %127

79:                                               ; preds = %41
  %80 = call i32 @sysroff_swap_un_in(%struct.IT_un* %16)
  %81 = call i32 @sysroff_print_un_out(%struct.IT_un* %16)
  br label %127

82:                                               ; preds = %41
  %83 = call i32 @sysroff_swap_sc_in(%struct.IT_sc* %17)
  %84 = call i32 @sysroff_print_sc_out(%struct.IT_sc* %17)
  br label %127

85:                                               ; preds = %41
  %86 = call i32 @sysroff_swap_er_in(%struct.IT_er* %18)
  %87 = call i32 @sysroff_print_er_out(%struct.IT_er* %18)
  br label %127

88:                                               ; preds = %41
  %89 = call i32 @sysroff_swap_ed_in(%struct.IT_ed* %19)
  %90 = call i32 @sysroff_print_ed_out(%struct.IT_ed* %19)
  br label %127

91:                                               ; preds = %41
  %92 = call i32 @sysroff_swap_sh_in(%struct.IT_sh* %20)
  %93 = call i32 @sysroff_print_sh_out(%struct.IT_sh* %20)
  br label %127

94:                                               ; preds = %41
  %95 = call i32 @sysroff_swap_ob_in(%struct.IT_ob* %21)
  %96 = call i32 @sysroff_print_ob_out(%struct.IT_ob* %21)
  br label %127

97:                                               ; preds = %41
  %98 = call i32 @sysroff_swap_rl_in(%struct.IT_rl* %22)
  %99 = call i32 @sysroff_print_rl_out(%struct.IT_rl* %22)
  br label %127

100:                                              ; preds = %41
  %101 = call i32 @sysroff_swap_du_in(%struct.IT_du* %23)
  %102 = call i32 @sysroff_print_du_out(%struct.IT_du* %23)
  br label %127

103:                                              ; preds = %41
  %104 = call i32 @sysroff_swap_dus_in(%struct.IT_dus* %24)
  %105 = call i32 @sysroff_print_dus_out(%struct.IT_dus* %24)
  br label %127

106:                                              ; preds = %41
  %107 = call i32 @sysroff_swap_dul_in(%struct.IT_dul* %25)
  %108 = call i32 @sysroff_print_dul_out(%struct.IT_dul* %25)
  br label %127

109:                                              ; preds = %41
  %110 = call i32 @sysroff_swap_dss_in(%struct.IT_dss* %26)
  %111 = call i32 @sysroff_print_dss_out(%struct.IT_dss* %26)
  br label %127

112:                                              ; preds = %41
  %113 = call i32 @sysroff_swap_hs_in(%struct.IT_hs* %27)
  %114 = call i32 @sysroff_print_hs_out(%struct.IT_hs* %27)
  br label %127

115:                                              ; preds = %41
  %116 = call i32 @sysroff_swap_dps_in(%struct.IT_dps* %28)
  %117 = call i32 @sysroff_print_dps_out(%struct.IT_dps* %28)
  br label %127

118:                                              ; preds = %41
  %119 = call i32 (...) @sysroff_swap_tr_in()
  %120 = call i32 (...) @sysroff_print_tr_out()
  br label %127

121:                                              ; preds = %41
  %122 = call i32 @sysroff_swap_dds_in(%struct.IT_dds* %29)
  %123 = call i32 @sysroff_print_dds_out(%struct.IT_dds* %29)
  br label %127

124:                                              ; preds = %41
  %125 = load i32, i32* %4, align 4
  %126 = call i32 @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %125)
  store i32 0, i32* %2, align 4
  br label %128

127:                                              ; preds = %121, %118, %115, %112, %109, %106, %103, %100, %97, %94, %91, %88, %85, %82, %79, %76, %73, %70, %67, %64, %61, %58, %55, %50, %47, %44
  store i32 1, i32* %2, align 4
  br label %128

128:                                              ; preds = %127, %124, %37
  %129 = load i32, i32* %2, align 4
  ret i32 %129
}

declare dso_local i32 @getc(i32) #1

declare dso_local i32 @ungetc(i32, i32) #1

declare dso_local i32 @sysroff_swap_cs_in(%struct.IT_cs*) #1

declare dso_local i32 @sysroff_print_cs_out(%struct.IT_cs*) #1

declare dso_local i32 @sysroff_swap_dln_in(%struct.IT_dln*) #1

declare dso_local i32 @sysroff_print_dln_out(%struct.IT_dln*) #1

declare dso_local i32 @sysroff_swap_hd_in(%struct.IT_hd*) #1

declare dso_local i32 @sysroff_print_hd_out(%struct.IT_hd*) #1

declare dso_local i32 @sysroff_swap_dar_in(%struct.IT_dar*) #1

declare dso_local i32 @sysroff_print_dar_out(%struct.IT_dar*) #1

declare dso_local i32 @sysroff_swap_dsy_in(%struct.IT_dsy*) #1

declare dso_local i32 @sysroff_print_dsy_out(%struct.IT_dsy*) #1

declare dso_local i32 @sysroff_swap_dfp_in(%struct.IT_dfp*) #1

declare dso_local i32 @sysroff_print_dfp_out(%struct.IT_dfp*) #1

declare dso_local i32 @sysroff_swap_dso_in(%struct.IT_dso*) #1

declare dso_local i32 @sysroff_print_dso_out(%struct.IT_dso*) #1

declare dso_local i32 @sysroff_swap_dpt_in(%struct.IT_dpt*) #1

declare dso_local i32 @sysroff_print_dpt_out(%struct.IT_dpt*) #1

declare dso_local i32 @sysroff_swap_den_in(%struct.IT_den*) #1

declare dso_local i32 @sysroff_print_den_out(%struct.IT_den*) #1

declare dso_local i32 @sysroff_swap_dbt_in(%struct.IT_dbt*) #1

declare dso_local i32 @sysroff_print_dbt_out(%struct.IT_dbt*) #1

declare dso_local i32 @sysroff_swap_dty_in(%struct.IT_dty*) #1

declare dso_local i32 @sysroff_print_dty_out(%struct.IT_dty*) #1

declare dso_local i32 @sysroff_swap_un_in(%struct.IT_un*) #1

declare dso_local i32 @sysroff_print_un_out(%struct.IT_un*) #1

declare dso_local i32 @sysroff_swap_sc_in(%struct.IT_sc*) #1

declare dso_local i32 @sysroff_print_sc_out(%struct.IT_sc*) #1

declare dso_local i32 @sysroff_swap_er_in(%struct.IT_er*) #1

declare dso_local i32 @sysroff_print_er_out(%struct.IT_er*) #1

declare dso_local i32 @sysroff_swap_ed_in(%struct.IT_ed*) #1

declare dso_local i32 @sysroff_print_ed_out(%struct.IT_ed*) #1

declare dso_local i32 @sysroff_swap_sh_in(%struct.IT_sh*) #1

declare dso_local i32 @sysroff_print_sh_out(%struct.IT_sh*) #1

declare dso_local i32 @sysroff_swap_ob_in(%struct.IT_ob*) #1

declare dso_local i32 @sysroff_print_ob_out(%struct.IT_ob*) #1

declare dso_local i32 @sysroff_swap_rl_in(%struct.IT_rl*) #1

declare dso_local i32 @sysroff_print_rl_out(%struct.IT_rl*) #1

declare dso_local i32 @sysroff_swap_du_in(%struct.IT_du*) #1

declare dso_local i32 @sysroff_print_du_out(%struct.IT_du*) #1

declare dso_local i32 @sysroff_swap_dus_in(%struct.IT_dus*) #1

declare dso_local i32 @sysroff_print_dus_out(%struct.IT_dus*) #1

declare dso_local i32 @sysroff_swap_dul_in(%struct.IT_dul*) #1

declare dso_local i32 @sysroff_print_dul_out(%struct.IT_dul*) #1

declare dso_local i32 @sysroff_swap_dss_in(%struct.IT_dss*) #1

declare dso_local i32 @sysroff_print_dss_out(%struct.IT_dss*) #1

declare dso_local i32 @sysroff_swap_hs_in(%struct.IT_hs*) #1

declare dso_local i32 @sysroff_print_hs_out(%struct.IT_hs*) #1

declare dso_local i32 @sysroff_swap_dps_in(%struct.IT_dps*) #1

declare dso_local i32 @sysroff_print_dps_out(%struct.IT_dps*) #1

declare dso_local i32 @sysroff_swap_tr_in(...) #1

declare dso_local i32 @sysroff_print_tr_out(...) #1

declare dso_local i32 @sysroff_swap_dds_in(%struct.IT_dds*) #1

declare dso_local i32 @sysroff_print_dds_out(%struct.IT_dds*) #1

declare dso_local i32 @printf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
