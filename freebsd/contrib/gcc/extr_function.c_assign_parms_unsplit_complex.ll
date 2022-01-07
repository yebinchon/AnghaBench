; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_function.c_assign_parms_unsplit_complex.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_function.c_assign_parms_unsplit_complex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 (i32)* }
%struct.assign_parm_data_all = type { i32, i64 }

@COMPLEX_TYPE = common dso_local global i64 0, align 8
@targetm = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.assign_parm_data_all*, i64)* @assign_parms_unsplit_complex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @assign_parms_unsplit_complex(%struct.assign_parm_data_all* %0, i64 %1) #0 {
  %3 = alloca %struct.assign_parm_data_all*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.assign_parm_data_all* %0, %struct.assign_parm_data_all** %3, align 8
  store i64 %1, i64* %4, align 8
  %14 = load %struct.assign_parm_data_all*, %struct.assign_parm_data_all** %3, align 8
  %15 = getelementptr inbounds %struct.assign_parm_data_all, %struct.assign_parm_data_all* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %6, align 8
  %17 = load i64, i64* %6, align 8
  store i64 %17, i64* %5, align 8
  br label %18

18:                                               ; preds = %156, %2
  %19 = load i64, i64* %5, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %159

21:                                               ; preds = %18
  %22 = load i64, i64* %5, align 8
  %23 = call i32 @TREE_TYPE(i64 %22)
  %24 = call i64 @TREE_CODE(i32 %23)
  %25 = load i64, i64* @COMPLEX_TYPE, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %130

27:                                               ; preds = %21
  %28 = load i64 (i32)*, i64 (i32)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @targetm, i32 0, i32 0, i32 0), align 8
  %29 = load i64, i64* %5, align 8
  %30 = call i32 @TREE_TYPE(i64 %29)
  %31 = call i64 %28(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %130

33:                                               ; preds = %27
  %34 = load i64, i64* %5, align 8
  %35 = call i32 @DECL_MODE(i64 %34)
  %36 = call i32 @GET_MODE_INNER(i32 %35)
  store i32 %36, i32* %10, align 4
  %37 = load i64, i64* %4, align 8
  %38 = call i64 @DECL_RTL(i64 %37)
  store i64 %38, i64* %8, align 8
  %39 = load i64, i64* %4, align 8
  %40 = call i64 @TREE_CHAIN(i64 %39)
  %41 = call i64 @DECL_RTL(i64 %40)
  store i64 %41, i64* %9, align 8
  %42 = load i32, i32* %10, align 4
  %43 = load i64, i64* %8, align 8
  %44 = call i32 @GET_MODE(i64 %43)
  %45 = icmp ne i32 %42, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %33
  %47 = load i32, i32* %10, align 4
  %48 = load i64, i64* %8, align 8
  %49 = call i64 @gen_lowpart_SUBREG(i32 %47, i64 %48)
  store i64 %49, i64* %8, align 8
  %50 = load i32, i32* %10, align 4
  %51 = load i64, i64* %9, align 8
  %52 = call i64 @gen_lowpart_SUBREG(i32 %50, i64 %51)
  store i64 %52, i64* %9, align 8
  br label %53

53:                                               ; preds = %46, %33
  %54 = load i64, i64* %5, align 8
  %55 = call i64 @TREE_ADDRESSABLE(i64 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %93

57:                                               ; preds = %53
  %58 = load i64, i64* %5, align 8
  %59 = call i32 @TREE_TYPE(i64 %58)
  %60 = call i32 @int_size_in_bytes(i32 %59)
  store i32 %60, i32* %13, align 4
  %61 = load i64, i64* %5, align 8
  %62 = call i32 @DECL_MODE(i64 %61)
  %63 = load i32, i32* %13, align 4
  %64 = load i64, i64* %5, align 8
  %65 = call i32 @TREE_TYPE(i64 %64)
  %66 = call i32 @TYPE_ALIGN(i32 %65)
  %67 = call i64 @assign_stack_local(i32 %62, i32 %63, i32 %66)
  store i64 %67, i64* %7, align 8
  %68 = load i64, i64* %7, align 8
  %69 = load i64, i64* %5, align 8
  %70 = call i32 @set_mem_attributes(i64 %68, i64 %69, i32 1)
  %71 = load i64, i64* %7, align 8
  %72 = load i32, i32* %10, align 4
  %73 = call i64 @adjust_address_nv(i64 %71, i32 %72, i32 0)
  store i64 %73, i64* %11, align 8
  %74 = load i64, i64* %7, align 8
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* %10, align 4
  %77 = call i32 @GET_MODE_SIZE(i32 %76)
  %78 = call i64 @adjust_address_nv(i64 %74, i32 %75, i32 %77)
  store i64 %78, i64* %12, align 8
  %79 = load %struct.assign_parm_data_all*, %struct.assign_parm_data_all** %3, align 8
  %80 = getelementptr inbounds %struct.assign_parm_data_all, %struct.assign_parm_data_all* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @push_to_sequence(i32 %81)
  %83 = load i64, i64* %11, align 8
  %84 = load i64, i64* %8, align 8
  %85 = call i32 @emit_move_insn(i64 %83, i64 %84)
  %86 = load i64, i64* %12, align 8
  %87 = load i64, i64* %9, align 8
  %88 = call i32 @emit_move_insn(i64 %86, i64 %87)
  %89 = call i32 (...) @get_insns()
  %90 = load %struct.assign_parm_data_all*, %struct.assign_parm_data_all** %3, align 8
  %91 = getelementptr inbounds %struct.assign_parm_data_all, %struct.assign_parm_data_all* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 8
  %92 = call i32 (...) @end_sequence()
  br label %99

93:                                               ; preds = %53
  %94 = load i64, i64* %5, align 8
  %95 = call i32 @DECL_MODE(i64 %94)
  %96 = load i64, i64* %8, align 8
  %97 = load i64, i64* %9, align 8
  %98 = call i64 @gen_rtx_CONCAT(i32 %95, i64 %96, i64 %97)
  store i64 %98, i64* %7, align 8
  br label %99

99:                                               ; preds = %93, %57
  %100 = load i64, i64* %5, align 8
  %101 = load i64, i64* %7, align 8
  %102 = call i32 @SET_DECL_RTL(i64 %100, i64 %101)
  %103 = load i64, i64* %4, align 8
  %104 = call i64 @DECL_INCOMING_RTL(i64 %103)
  store i64 %104, i64* %8, align 8
  %105 = load i64, i64* %4, align 8
  %106 = call i64 @TREE_CHAIN(i64 %105)
  %107 = call i64 @DECL_INCOMING_RTL(i64 %106)
  store i64 %107, i64* %9, align 8
  %108 = load i32, i32* %10, align 4
  %109 = load i64, i64* %8, align 8
  %110 = call i32 @GET_MODE(i64 %109)
  %111 = icmp ne i32 %108, %110
  br i1 %111, label %112, label %119

112:                                              ; preds = %99
  %113 = load i32, i32* %10, align 4
  %114 = load i64, i64* %8, align 8
  %115 = call i64 @gen_lowpart_SUBREG(i32 %113, i64 %114)
  store i64 %115, i64* %8, align 8
  %116 = load i32, i32* %10, align 4
  %117 = load i64, i64* %9, align 8
  %118 = call i64 @gen_lowpart_SUBREG(i32 %116, i64 %117)
  store i64 %118, i64* %9, align 8
  br label %119

119:                                              ; preds = %112, %99
  %120 = load i64, i64* %5, align 8
  %121 = call i32 @DECL_MODE(i64 %120)
  %122 = load i64, i64* %8, align 8
  %123 = load i64, i64* %9, align 8
  %124 = call i64 @gen_rtx_CONCAT(i32 %121, i64 %122, i64 %123)
  store i64 %124, i64* %7, align 8
  %125 = load i64, i64* %5, align 8
  %126 = load i64, i64* %7, align 8
  %127 = call i32 @set_decl_incoming_rtl(i64 %125, i64 %126)
  %128 = load i64, i64* %4, align 8
  %129 = call i64 @TREE_CHAIN(i64 %128)
  store i64 %129, i64* %4, align 8
  br label %153

130:                                              ; preds = %27, %21
  %131 = load i64, i64* %5, align 8
  %132 = load i64, i64* %4, align 8
  %133 = call i64 @DECL_RTL(i64 %132)
  %134 = call i32 @SET_DECL_RTL(i64 %131, i64 %133)
  %135 = load i64, i64* %5, align 8
  %136 = load i64, i64* %4, align 8
  %137 = call i64 @DECL_INCOMING_RTL(i64 %136)
  %138 = call i32 @set_decl_incoming_rtl(i64 %135, i64 %137)
  %139 = load i64, i64* %5, align 8
  %140 = call i64 @DECL_INCOMING_RTL(i64 %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %152

142:                                              ; preds = %130
  %143 = load i64, i64* %5, align 8
  %144 = call i64 @DECL_INCOMING_RTL(i64 %143)
  %145 = call i64 @MEM_P(i64 %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %152

147:                                              ; preds = %142
  %148 = load i64, i64* %5, align 8
  %149 = call i64 @DECL_INCOMING_RTL(i64 %148)
  %150 = load i64, i64* %5, align 8
  %151 = call i32 @set_mem_expr(i64 %149, i64 %150)
  br label %152

152:                                              ; preds = %147, %142, %130
  br label %153

153:                                              ; preds = %152, %119
  %154 = load i64, i64* %4, align 8
  %155 = call i64 @TREE_CHAIN(i64 %154)
  store i64 %155, i64* %4, align 8
  br label %156

156:                                              ; preds = %153
  %157 = load i64, i64* %5, align 8
  %158 = call i64 @TREE_CHAIN(i64 %157)
  store i64 %158, i64* %5, align 8
  br label %18

159:                                              ; preds = %18
  ret void
}

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @TREE_TYPE(i64) #1

declare dso_local i32 @GET_MODE_INNER(i32) #1

declare dso_local i32 @DECL_MODE(i64) #1

declare dso_local i64 @DECL_RTL(i64) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

declare dso_local i32 @GET_MODE(i64) #1

declare dso_local i64 @gen_lowpart_SUBREG(i32, i64) #1

declare dso_local i64 @TREE_ADDRESSABLE(i64) #1

declare dso_local i32 @int_size_in_bytes(i32) #1

declare dso_local i64 @assign_stack_local(i32, i32, i32) #1

declare dso_local i32 @TYPE_ALIGN(i32) #1

declare dso_local i32 @set_mem_attributes(i64, i64, i32) #1

declare dso_local i64 @adjust_address_nv(i64, i32, i32) #1

declare dso_local i32 @GET_MODE_SIZE(i32) #1

declare dso_local i32 @push_to_sequence(i32) #1

declare dso_local i32 @emit_move_insn(i64, i64) #1

declare dso_local i32 @get_insns(...) #1

declare dso_local i32 @end_sequence(...) #1

declare dso_local i64 @gen_rtx_CONCAT(i32, i64, i64) #1

declare dso_local i32 @SET_DECL_RTL(i64, i64) #1

declare dso_local i64 @DECL_INCOMING_RTL(i64) #1

declare dso_local i32 @set_decl_incoming_rtl(i64, i64) #1

declare dso_local i64 @MEM_P(i64) #1

declare dso_local i32 @set_mem_expr(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
