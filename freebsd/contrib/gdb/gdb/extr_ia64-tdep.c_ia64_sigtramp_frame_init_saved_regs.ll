; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ia64-tdep.c_ia64_sigtramp_frame_init_saved_regs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ia64-tdep.c_ia64_sigtramp_frame_init_saved_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ia64_frame_cache = type { i32, i8** }

@IA64_IP_REGNUM = common dso_local global i32 0, align 4
@IA64_VRAP_REGNUM = common dso_local global i64 0, align 8
@IA64_CFM_REGNUM = common dso_local global i64 0, align 8
@IA64_PSR_REGNUM = common dso_local global i64 0, align 8
@IA64_BSP_REGNUM = common dso_local global i64 0, align 8
@IA64_RNAT_REGNUM = common dso_local global i64 0, align 8
@IA64_CCV_REGNUM = common dso_local global i64 0, align 8
@IA64_UNAT_REGNUM = common dso_local global i64 0, align 8
@IA64_FPSR_REGNUM = common dso_local global i64 0, align 8
@IA64_PFS_REGNUM = common dso_local global i64 0, align 8
@IA64_LC_REGNUM = common dso_local global i64 0, align 8
@IA64_GR1_REGNUM = common dso_local global i32 0, align 4
@IA64_GR31_REGNUM = common dso_local global i32 0, align 4
@IA64_BR0_REGNUM = common dso_local global i32 0, align 4
@IA64_BR7_REGNUM = common dso_local global i32 0, align 4
@IA64_FR2_REGNUM = common dso_local global i32 0, align 4
@IA64_FR31_REGNUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ia64_frame_cache*)* @ia64_sigtramp_frame_init_saved_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ia64_sigtramp_frame_init_saved_regs(%struct.ia64_frame_cache* %0) #0 {
  %2 = alloca %struct.ia64_frame_cache*, align 8
  %3 = alloca i32, align 4
  store %struct.ia64_frame_cache* %0, %struct.ia64_frame_cache** %2, align 8
  br i1 true, label %4, label %177

4:                                                ; preds = %1
  %5 = load %struct.ia64_frame_cache*, %struct.ia64_frame_cache** %2, align 8
  %6 = getelementptr inbounds %struct.ia64_frame_cache, %struct.ia64_frame_cache* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @IA64_IP_REGNUM, align 4
  %9 = call i8* @SIGCONTEXT_REGISTER_ADDRESS(i32 %7, i32 %8)
  %10 = load %struct.ia64_frame_cache*, %struct.ia64_frame_cache** %2, align 8
  %11 = getelementptr inbounds %struct.ia64_frame_cache, %struct.ia64_frame_cache* %10, i32 0, i32 1
  %12 = load i8**, i8*** %11, align 8
  %13 = load i64, i64* @IA64_VRAP_REGNUM, align 8
  %14 = getelementptr inbounds i8*, i8** %12, i64 %13
  store i8* %9, i8** %14, align 8
  %15 = load %struct.ia64_frame_cache*, %struct.ia64_frame_cache** %2, align 8
  %16 = getelementptr inbounds %struct.ia64_frame_cache, %struct.ia64_frame_cache* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i64, i64* @IA64_CFM_REGNUM, align 8
  %19 = trunc i64 %18 to i32
  %20 = call i8* @SIGCONTEXT_REGISTER_ADDRESS(i32 %17, i32 %19)
  %21 = load %struct.ia64_frame_cache*, %struct.ia64_frame_cache** %2, align 8
  %22 = getelementptr inbounds %struct.ia64_frame_cache, %struct.ia64_frame_cache* %21, i32 0, i32 1
  %23 = load i8**, i8*** %22, align 8
  %24 = load i64, i64* @IA64_CFM_REGNUM, align 8
  %25 = getelementptr inbounds i8*, i8** %23, i64 %24
  store i8* %20, i8** %25, align 8
  %26 = load %struct.ia64_frame_cache*, %struct.ia64_frame_cache** %2, align 8
  %27 = getelementptr inbounds %struct.ia64_frame_cache, %struct.ia64_frame_cache* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i64, i64* @IA64_PSR_REGNUM, align 8
  %30 = trunc i64 %29 to i32
  %31 = call i8* @SIGCONTEXT_REGISTER_ADDRESS(i32 %28, i32 %30)
  %32 = load %struct.ia64_frame_cache*, %struct.ia64_frame_cache** %2, align 8
  %33 = getelementptr inbounds %struct.ia64_frame_cache, %struct.ia64_frame_cache* %32, i32 0, i32 1
  %34 = load i8**, i8*** %33, align 8
  %35 = load i64, i64* @IA64_PSR_REGNUM, align 8
  %36 = getelementptr inbounds i8*, i8** %34, i64 %35
  store i8* %31, i8** %36, align 8
  %37 = load %struct.ia64_frame_cache*, %struct.ia64_frame_cache** %2, align 8
  %38 = getelementptr inbounds %struct.ia64_frame_cache, %struct.ia64_frame_cache* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i64, i64* @IA64_BSP_REGNUM, align 8
  %41 = trunc i64 %40 to i32
  %42 = call i8* @SIGCONTEXT_REGISTER_ADDRESS(i32 %39, i32 %41)
  %43 = load %struct.ia64_frame_cache*, %struct.ia64_frame_cache** %2, align 8
  %44 = getelementptr inbounds %struct.ia64_frame_cache, %struct.ia64_frame_cache* %43, i32 0, i32 1
  %45 = load i8**, i8*** %44, align 8
  %46 = load i64, i64* @IA64_BSP_REGNUM, align 8
  %47 = getelementptr inbounds i8*, i8** %45, i64 %46
  store i8* %42, i8** %47, align 8
  %48 = load %struct.ia64_frame_cache*, %struct.ia64_frame_cache** %2, align 8
  %49 = getelementptr inbounds %struct.ia64_frame_cache, %struct.ia64_frame_cache* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i64, i64* @IA64_RNAT_REGNUM, align 8
  %52 = trunc i64 %51 to i32
  %53 = call i8* @SIGCONTEXT_REGISTER_ADDRESS(i32 %50, i32 %52)
  %54 = load %struct.ia64_frame_cache*, %struct.ia64_frame_cache** %2, align 8
  %55 = getelementptr inbounds %struct.ia64_frame_cache, %struct.ia64_frame_cache* %54, i32 0, i32 1
  %56 = load i8**, i8*** %55, align 8
  %57 = load i64, i64* @IA64_RNAT_REGNUM, align 8
  %58 = getelementptr inbounds i8*, i8** %56, i64 %57
  store i8* %53, i8** %58, align 8
  %59 = load %struct.ia64_frame_cache*, %struct.ia64_frame_cache** %2, align 8
  %60 = getelementptr inbounds %struct.ia64_frame_cache, %struct.ia64_frame_cache* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i64, i64* @IA64_CCV_REGNUM, align 8
  %63 = trunc i64 %62 to i32
  %64 = call i8* @SIGCONTEXT_REGISTER_ADDRESS(i32 %61, i32 %63)
  %65 = load %struct.ia64_frame_cache*, %struct.ia64_frame_cache** %2, align 8
  %66 = getelementptr inbounds %struct.ia64_frame_cache, %struct.ia64_frame_cache* %65, i32 0, i32 1
  %67 = load i8**, i8*** %66, align 8
  %68 = load i64, i64* @IA64_CCV_REGNUM, align 8
  %69 = getelementptr inbounds i8*, i8** %67, i64 %68
  store i8* %64, i8** %69, align 8
  %70 = load %struct.ia64_frame_cache*, %struct.ia64_frame_cache** %2, align 8
  %71 = getelementptr inbounds %struct.ia64_frame_cache, %struct.ia64_frame_cache* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i64, i64* @IA64_UNAT_REGNUM, align 8
  %74 = trunc i64 %73 to i32
  %75 = call i8* @SIGCONTEXT_REGISTER_ADDRESS(i32 %72, i32 %74)
  %76 = load %struct.ia64_frame_cache*, %struct.ia64_frame_cache** %2, align 8
  %77 = getelementptr inbounds %struct.ia64_frame_cache, %struct.ia64_frame_cache* %76, i32 0, i32 1
  %78 = load i8**, i8*** %77, align 8
  %79 = load i64, i64* @IA64_UNAT_REGNUM, align 8
  %80 = getelementptr inbounds i8*, i8** %78, i64 %79
  store i8* %75, i8** %80, align 8
  %81 = load %struct.ia64_frame_cache*, %struct.ia64_frame_cache** %2, align 8
  %82 = getelementptr inbounds %struct.ia64_frame_cache, %struct.ia64_frame_cache* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i64, i64* @IA64_FPSR_REGNUM, align 8
  %85 = trunc i64 %84 to i32
  %86 = call i8* @SIGCONTEXT_REGISTER_ADDRESS(i32 %83, i32 %85)
  %87 = load %struct.ia64_frame_cache*, %struct.ia64_frame_cache** %2, align 8
  %88 = getelementptr inbounds %struct.ia64_frame_cache, %struct.ia64_frame_cache* %87, i32 0, i32 1
  %89 = load i8**, i8*** %88, align 8
  %90 = load i64, i64* @IA64_FPSR_REGNUM, align 8
  %91 = getelementptr inbounds i8*, i8** %89, i64 %90
  store i8* %86, i8** %91, align 8
  %92 = load %struct.ia64_frame_cache*, %struct.ia64_frame_cache** %2, align 8
  %93 = getelementptr inbounds %struct.ia64_frame_cache, %struct.ia64_frame_cache* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i64, i64* @IA64_PFS_REGNUM, align 8
  %96 = trunc i64 %95 to i32
  %97 = call i8* @SIGCONTEXT_REGISTER_ADDRESS(i32 %94, i32 %96)
  %98 = load %struct.ia64_frame_cache*, %struct.ia64_frame_cache** %2, align 8
  %99 = getelementptr inbounds %struct.ia64_frame_cache, %struct.ia64_frame_cache* %98, i32 0, i32 1
  %100 = load i8**, i8*** %99, align 8
  %101 = load i64, i64* @IA64_PFS_REGNUM, align 8
  %102 = getelementptr inbounds i8*, i8** %100, i64 %101
  store i8* %97, i8** %102, align 8
  %103 = load %struct.ia64_frame_cache*, %struct.ia64_frame_cache** %2, align 8
  %104 = getelementptr inbounds %struct.ia64_frame_cache, %struct.ia64_frame_cache* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i64, i64* @IA64_LC_REGNUM, align 8
  %107 = trunc i64 %106 to i32
  %108 = call i8* @SIGCONTEXT_REGISTER_ADDRESS(i32 %105, i32 %107)
  %109 = load %struct.ia64_frame_cache*, %struct.ia64_frame_cache** %2, align 8
  %110 = getelementptr inbounds %struct.ia64_frame_cache, %struct.ia64_frame_cache* %109, i32 0, i32 1
  %111 = load i8**, i8*** %110, align 8
  %112 = load i64, i64* @IA64_LC_REGNUM, align 8
  %113 = getelementptr inbounds i8*, i8** %111, i64 %112
  store i8* %108, i8** %113, align 8
  %114 = load i32, i32* @IA64_GR1_REGNUM, align 4
  store i32 %114, i32* %3, align 4
  br label %115

115:                                              ; preds = %131, %4
  %116 = load i32, i32* %3, align 4
  %117 = load i32, i32* @IA64_GR31_REGNUM, align 4
  %118 = icmp sle i32 %116, %117
  br i1 %118, label %119, label %134

119:                                              ; preds = %115
  %120 = load %struct.ia64_frame_cache*, %struct.ia64_frame_cache** %2, align 8
  %121 = getelementptr inbounds %struct.ia64_frame_cache, %struct.ia64_frame_cache* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* %3, align 4
  %124 = call i8* @SIGCONTEXT_REGISTER_ADDRESS(i32 %122, i32 %123)
  %125 = load %struct.ia64_frame_cache*, %struct.ia64_frame_cache** %2, align 8
  %126 = getelementptr inbounds %struct.ia64_frame_cache, %struct.ia64_frame_cache* %125, i32 0, i32 1
  %127 = load i8**, i8*** %126, align 8
  %128 = load i32, i32* %3, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i8*, i8** %127, i64 %129
  store i8* %124, i8** %130, align 8
  br label %131

131:                                              ; preds = %119
  %132 = load i32, i32* %3, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %3, align 4
  br label %115

134:                                              ; preds = %115
  %135 = load i32, i32* @IA64_BR0_REGNUM, align 4
  store i32 %135, i32* %3, align 4
  br label %136

136:                                              ; preds = %152, %134
  %137 = load i32, i32* %3, align 4
  %138 = load i32, i32* @IA64_BR7_REGNUM, align 4
  %139 = icmp sle i32 %137, %138
  br i1 %139, label %140, label %155

140:                                              ; preds = %136
  %141 = load %struct.ia64_frame_cache*, %struct.ia64_frame_cache** %2, align 8
  %142 = getelementptr inbounds %struct.ia64_frame_cache, %struct.ia64_frame_cache* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* %3, align 4
  %145 = call i8* @SIGCONTEXT_REGISTER_ADDRESS(i32 %143, i32 %144)
  %146 = load %struct.ia64_frame_cache*, %struct.ia64_frame_cache** %2, align 8
  %147 = getelementptr inbounds %struct.ia64_frame_cache, %struct.ia64_frame_cache* %146, i32 0, i32 1
  %148 = load i8**, i8*** %147, align 8
  %149 = load i32, i32* %3, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i8*, i8** %148, i64 %150
  store i8* %145, i8** %151, align 8
  br label %152

152:                                              ; preds = %140
  %153 = load i32, i32* %3, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %3, align 4
  br label %136

155:                                              ; preds = %136
  %156 = load i32, i32* @IA64_FR2_REGNUM, align 4
  store i32 %156, i32* %3, align 4
  br label %157

157:                                              ; preds = %173, %155
  %158 = load i32, i32* %3, align 4
  %159 = load i32, i32* @IA64_FR31_REGNUM, align 4
  %160 = icmp sle i32 %158, %159
  br i1 %160, label %161, label %176

161:                                              ; preds = %157
  %162 = load %struct.ia64_frame_cache*, %struct.ia64_frame_cache** %2, align 8
  %163 = getelementptr inbounds %struct.ia64_frame_cache, %struct.ia64_frame_cache* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = load i32, i32* %3, align 4
  %166 = call i8* @SIGCONTEXT_REGISTER_ADDRESS(i32 %164, i32 %165)
  %167 = load %struct.ia64_frame_cache*, %struct.ia64_frame_cache** %2, align 8
  %168 = getelementptr inbounds %struct.ia64_frame_cache, %struct.ia64_frame_cache* %167, i32 0, i32 1
  %169 = load i8**, i8*** %168, align 8
  %170 = load i32, i32* %3, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i8*, i8** %169, i64 %171
  store i8* %166, i8** %172, align 8
  br label %173

173:                                              ; preds = %161
  %174 = load i32, i32* %3, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %3, align 4
  br label %157

176:                                              ; preds = %157
  br label %177

177:                                              ; preds = %176, %1
  ret void
}

declare dso_local i8* @SIGCONTEXT_REGISTER_ADDRESS(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
