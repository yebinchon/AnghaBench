; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_function.c_assign_parm_setup_stack.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_function.c_assign_parm_setup_stack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.assign_parm_data_all = type { i32 }
%struct.assign_parm_data_one = type { i64, i64, i64, i64, i32 }

@BLOCK_OP_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.assign_parm_data_all*, i32, %struct.assign_parm_data_one*)* @assign_parm_setup_stack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @assign_parm_setup_stack(%struct.assign_parm_data_all* %0, i32 %1, %struct.assign_parm_data_one* %2) #0 {
  %4 = alloca %struct.assign_parm_data_all*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.assign_parm_data_one*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.assign_parm_data_all* %0, %struct.assign_parm_data_all** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.assign_parm_data_one* %2, %struct.assign_parm_data_one** %6, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.assign_parm_data_one*, %struct.assign_parm_data_one** %6, align 8
  %12 = getelementptr inbounds %struct.assign_parm_data_one, %struct.assign_parm_data_one* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.assign_parm_data_one*, %struct.assign_parm_data_one** %6, align 8
  %15 = getelementptr inbounds %struct.assign_parm_data_one, %struct.assign_parm_data_one* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %13, %16
  br i1 %17, label %18, label %59

18:                                               ; preds = %3
  %19 = load %struct.assign_parm_data_one*, %struct.assign_parm_data_one** %6, align 8
  %20 = getelementptr inbounds %struct.assign_parm_data_one, %struct.assign_parm_data_one* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @GET_MODE(i64 %21)
  %23 = call i32 @gen_reg_rtx(i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.assign_parm_data_one*, %struct.assign_parm_data_one** %6, align 8
  %26 = getelementptr inbounds %struct.assign_parm_data_one, %struct.assign_parm_data_one* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @validize_mem(i64 %27)
  %29 = call i32 @emit_move_insn(i32 %24, i32 %28)
  %30 = load %struct.assign_parm_data_all*, %struct.assign_parm_data_all** %4, align 8
  %31 = getelementptr inbounds %struct.assign_parm_data_all, %struct.assign_parm_data_all* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @push_to_sequence(i32 %32)
  store i32 1, i32* %7, align 4
  %34 = load %struct.assign_parm_data_one*, %struct.assign_parm_data_one** %6, align 8
  %35 = getelementptr inbounds %struct.assign_parm_data_one, %struct.assign_parm_data_one* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @TREE_TYPE(i32 %38)
  %40 = call i32 @TYPE_UNSIGNED(i32 %39)
  %41 = call i64 @convert_to_mode(i64 %36, i32 %37, i32 %40)
  %42 = load %struct.assign_parm_data_one*, %struct.assign_parm_data_one** %6, align 8
  %43 = getelementptr inbounds %struct.assign_parm_data_one, %struct.assign_parm_data_one* %42, i32 0, i32 2
  store i64 %41, i64* %43, align 8
  %44 = load %struct.assign_parm_data_one*, %struct.assign_parm_data_one** %6, align 8
  %45 = getelementptr inbounds %struct.assign_parm_data_one, %struct.assign_parm_data_one* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %18
  %49 = load %struct.assign_parm_data_one*, %struct.assign_parm_data_one** %6, align 8
  %50 = getelementptr inbounds %struct.assign_parm_data_one, %struct.assign_parm_data_one* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.assign_parm_data_one*, %struct.assign_parm_data_one** %6, align 8
  %53 = getelementptr inbounds %struct.assign_parm_data_one, %struct.assign_parm_data_one* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = call i64 @adjust_address(i64 %51, i64 %54, i32 0)
  %56 = load %struct.assign_parm_data_one*, %struct.assign_parm_data_one** %6, align 8
  %57 = getelementptr inbounds %struct.assign_parm_data_one, %struct.assign_parm_data_one* %56, i32 0, i32 3
  store i64 %55, i64* %57, align 8
  br label %58

58:                                               ; preds = %48, %18
  br label %59

59:                                               ; preds = %58, %3
  %60 = load %struct.assign_parm_data_one*, %struct.assign_parm_data_one** %6, align 8
  %61 = getelementptr inbounds %struct.assign_parm_data_one, %struct.assign_parm_data_one* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.assign_parm_data_one*, %struct.assign_parm_data_one** %6, align 8
  %64 = getelementptr inbounds %struct.assign_parm_data_one, %struct.assign_parm_data_one* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %62, %65
  br i1 %66, label %67, label %129

67:                                               ; preds = %59
  %68 = load %struct.assign_parm_data_one*, %struct.assign_parm_data_one** %6, align 8
  %69 = getelementptr inbounds %struct.assign_parm_data_one, %struct.assign_parm_data_one* %68, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %94

72:                                               ; preds = %67
  %73 = load %struct.assign_parm_data_one*, %struct.assign_parm_data_one** %6, align 8
  %74 = getelementptr inbounds %struct.assign_parm_data_one, %struct.assign_parm_data_one* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = call i32 @GET_MODE(i64 %75)
  %77 = load %struct.assign_parm_data_one*, %struct.assign_parm_data_one** %6, align 8
  %78 = getelementptr inbounds %struct.assign_parm_data_one, %struct.assign_parm_data_one* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = call i32 @GET_MODE(i64 %79)
  %81 = call i32 @GET_MODE_SIZE(i32 %80)
  %82 = load %struct.assign_parm_data_one*, %struct.assign_parm_data_one** %6, align 8
  %83 = getelementptr inbounds %struct.assign_parm_data_one, %struct.assign_parm_data_one* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @TYPE_ALIGN(i32 %84)
  %86 = call i64 @assign_stack_local(i32 %76, i32 %81, i32 %85)
  %87 = load %struct.assign_parm_data_one*, %struct.assign_parm_data_one** %6, align 8
  %88 = getelementptr inbounds %struct.assign_parm_data_one, %struct.assign_parm_data_one* %87, i32 0, i32 3
  store i64 %86, i64* %88, align 8
  %89 = load %struct.assign_parm_data_one*, %struct.assign_parm_data_one** %6, align 8
  %90 = getelementptr inbounds %struct.assign_parm_data_one, %struct.assign_parm_data_one* %89, i32 0, i32 3
  %91 = load i64, i64* %90, align 8
  %92 = load i32, i32* %5, align 4
  %93 = call i32 @set_mem_attributes(i64 %91, i32 %92, i32 1)
  br label %94

94:                                               ; preds = %72, %67
  %95 = load %struct.assign_parm_data_one*, %struct.assign_parm_data_one** %6, align 8
  %96 = getelementptr inbounds %struct.assign_parm_data_one, %struct.assign_parm_data_one* %95, i32 0, i32 3
  %97 = load i64, i64* %96, align 8
  %98 = call i32 @validize_mem(i64 %97)
  store i32 %98, i32* %10, align 4
  %99 = load %struct.assign_parm_data_one*, %struct.assign_parm_data_one** %6, align 8
  %100 = getelementptr inbounds %struct.assign_parm_data_one, %struct.assign_parm_data_one* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = call i32 @validize_mem(i64 %101)
  store i32 %102, i32* %9, align 4
  %103 = load i32, i32* %9, align 4
  %104 = call i64 @MEM_P(i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %124

106:                                              ; preds = %94
  %107 = load i32, i32* %7, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %114, label %109

109:                                              ; preds = %106
  %110 = load %struct.assign_parm_data_all*, %struct.assign_parm_data_all** %4, align 8
  %111 = getelementptr inbounds %struct.assign_parm_data_all, %struct.assign_parm_data_all* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @push_to_sequence(i32 %112)
  br label %114

114:                                              ; preds = %109, %106
  store i32 1, i32* %7, align 4
  %115 = load i32, i32* %10, align 4
  %116 = load i32, i32* %9, align 4
  %117 = load %struct.assign_parm_data_one*, %struct.assign_parm_data_one** %6, align 8
  %118 = getelementptr inbounds %struct.assign_parm_data_one, %struct.assign_parm_data_one* %117, i32 0, i32 4
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @int_size_in_bytes(i32 %119)
  %121 = call i32 @GEN_INT(i32 %120)
  %122 = load i32, i32* @BLOCK_OP_NORMAL, align 4
  %123 = call i32 @emit_block_move(i32 %115, i32 %116, i32 %121, i32 %122)
  br label %128

124:                                              ; preds = %94
  %125 = load i32, i32* %10, align 4
  %126 = load i32, i32* %9, align 4
  %127 = call i32 @emit_move_insn(i32 %125, i32 %126)
  br label %128

128:                                              ; preds = %124, %114
  br label %129

129:                                              ; preds = %128, %59
  %130 = load i32, i32* %7, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %137

132:                                              ; preds = %129
  %133 = call i32 (...) @get_insns()
  %134 = load %struct.assign_parm_data_all*, %struct.assign_parm_data_all** %4, align 8
  %135 = getelementptr inbounds %struct.assign_parm_data_all, %struct.assign_parm_data_all* %134, i32 0, i32 0
  store i32 %133, i32* %135, align 4
  %136 = call i32 (...) @end_sequence()
  br label %137

137:                                              ; preds = %132, %129
  %138 = load i32, i32* %5, align 4
  %139 = load %struct.assign_parm_data_one*, %struct.assign_parm_data_one** %6, align 8
  %140 = getelementptr inbounds %struct.assign_parm_data_one, %struct.assign_parm_data_one* %139, i32 0, i32 3
  %141 = load i64, i64* %140, align 8
  %142 = call i32 @SET_DECL_RTL(i32 %138, i64 %141)
  ret void
}

declare dso_local i32 @gen_reg_rtx(i32) #1

declare dso_local i32 @GET_MODE(i64) #1

declare dso_local i32 @emit_move_insn(i32, i32) #1

declare dso_local i32 @validize_mem(i64) #1

declare dso_local i32 @push_to_sequence(i32) #1

declare dso_local i64 @convert_to_mode(i64, i32, i32) #1

declare dso_local i32 @TYPE_UNSIGNED(i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i64 @adjust_address(i64, i64, i32) #1

declare dso_local i64 @assign_stack_local(i32, i32, i32) #1

declare dso_local i32 @GET_MODE_SIZE(i32) #1

declare dso_local i32 @TYPE_ALIGN(i32) #1

declare dso_local i32 @set_mem_attributes(i64, i32, i32) #1

declare dso_local i64 @MEM_P(i32) #1

declare dso_local i32 @emit_block_move(i32, i32, i32, i32) #1

declare dso_local i32 @GEN_INT(i32) #1

declare dso_local i32 @int_size_in_bytes(i32) #1

declare dso_local i32 @get_insns(...) #1

declare dso_local i32 @end_sequence(...) #1

declare dso_local i32 @SET_DECL_RTL(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
