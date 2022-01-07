; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/s390/extr_s390.c_s390_dump_pool.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/s390/extr_s390.c_s390_dump_pool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.constant_pool = type { i32, %struct.constant*, i32, %struct.constant** }
%struct.constant = type { i32, i32, %struct.constant* }

@TARGET_CPU_ZARCH = common dso_local global i64 0, align 8
@NR_C_MODES = common dso_local global i32 0, align 4
@CONST = common dso_local global i64 0, align 8
@UNSPEC = common dso_local global i64 0, align 8
@UNSPEC_LTREL_OFFSET = common dso_local global i64 0, align 8
@Pmode = common dso_local global i32 0, align 4
@VOIDmode = common dso_local global i32 0, align 4
@constant_modes = common dso_local global i32* null, align 8
@UNSPECV_POOL_ENTRY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.constant_pool*, i32)* @s390_dump_pool to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s390_dump_pool(%struct.constant_pool* %0, i32 %1) #0 {
  %3 = alloca %struct.constant_pool*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.constant*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.constant_pool* %0, %struct.constant_pool** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.constant_pool*, %struct.constant_pool** %3, align 8
  %10 = getelementptr inbounds %struct.constant_pool, %struct.constant_pool* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %6, align 4
  %12 = load i64, i64* @TARGET_CPU_ZARCH, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %2
  %15 = call i32 (...) @gen_pool_section_start()
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @emit_insn_after(i32 %15, i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @INSN_ADDRESSES_NEW(i32 %18, i32 -1)
  br label %20

20:                                               ; preds = %14, %2
  %21 = load i64, i64* @TARGET_CPU_ZARCH, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = call i32 @GEN_INT(i32 8)
  %25 = call i32 @gen_pool_align(i32 %24)
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @emit_insn_after(i32 %25, i32 %26)
  store i32 %27, i32* %6, align 4
  br label %33

28:                                               ; preds = %20
  %29 = call i32 @GEN_INT(i32 4)
  %30 = call i32 @gen_pool_align(i32 %29)
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @emit_insn_after(i32 %30, i32 %31)
  store i32 %32, i32* %6, align 4
  br label %33

33:                                               ; preds = %28, %23
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @INSN_ADDRESSES_NEW(i32 %34, i32 -1)
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %46, label %38

38:                                               ; preds = %33
  %39 = load %struct.constant_pool*, %struct.constant_pool** %3, align 8
  %40 = getelementptr inbounds %struct.constant_pool, %struct.constant_pool* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @emit_label_after(i32 %41, i32 %42)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @INSN_ADDRESSES_NEW(i32 %44, i32 -1)
  br label %46

46:                                               ; preds = %38, %33
  store i32 0, i32* %7, align 4
  br label %47

47:                                               ; preds = %128, %46
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @NR_C_MODES, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %131

51:                                               ; preds = %47
  %52 = load %struct.constant_pool*, %struct.constant_pool** %3, align 8
  %53 = getelementptr inbounds %struct.constant_pool, %struct.constant_pool* %52, i32 0, i32 3
  %54 = load %struct.constant**, %struct.constant*** %53, align 8
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.constant*, %struct.constant** %54, i64 %56
  %58 = load %struct.constant*, %struct.constant** %57, align 8
  store %struct.constant* %58, %struct.constant** %5, align 8
  br label %59

59:                                               ; preds = %123, %51
  %60 = load %struct.constant*, %struct.constant** %5, align 8
  %61 = icmp ne %struct.constant* %60, null
  br i1 %61, label %62, label %127

62:                                               ; preds = %59
  %63 = load %struct.constant*, %struct.constant** %5, align 8
  %64 = getelementptr inbounds %struct.constant, %struct.constant* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %8, align 4
  %67 = call i64 @GET_CODE(i32 %66)
  %68 = load i64, i64* @CONST, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %101

70:                                               ; preds = %62
  %71 = load i32, i32* %8, align 4
  %72 = call i32 @XEXP(i32 %71, i32 0)
  %73 = call i64 @GET_CODE(i32 %72)
  %74 = load i64, i64* @UNSPEC, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %101

76:                                               ; preds = %70
  %77 = load i32, i32* %8, align 4
  %78 = call i32 @XEXP(i32 %77, i32 0)
  %79 = call i64 @XINT(i32 %78, i32 1)
  %80 = load i64, i64* @UNSPEC_LTREL_OFFSET, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %101

82:                                               ; preds = %76
  %83 = load i32, i32* %8, align 4
  %84 = call i32 @XEXP(i32 %83, i32 0)
  %85 = call i32 @XVECLEN(i32 %84, i32 0)
  %86 = icmp eq i32 %85, 1
  br i1 %86, label %87, label %101

87:                                               ; preds = %82
  %88 = load i32, i32* @Pmode, align 4
  %89 = load i32, i32* %8, align 4
  %90 = call i32 @XEXP(i32 %89, i32 0)
  %91 = call i32 @XVECEXP(i32 %90, i32 0, i32 0)
  %92 = load i32, i32* @VOIDmode, align 4
  %93 = load %struct.constant_pool*, %struct.constant_pool** %3, align 8
  %94 = getelementptr inbounds %struct.constant_pool, %struct.constant_pool* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @gen_rtx_LABEL_REF(i32 %92, i32 %95)
  %97 = call i32 @gen_rtx_MINUS(i32 %88, i32 %91, i32 %96)
  store i32 %97, i32* %8, align 4
  %98 = load i32, i32* @VOIDmode, align 4
  %99 = load i32, i32* %8, align 4
  %100 = call i32 @gen_rtx_CONST(i32 %98, i32 %99)
  store i32 %100, i32* %8, align 4
  br label %101

101:                                              ; preds = %87, %82, %76, %70, %62
  %102 = load %struct.constant*, %struct.constant** %5, align 8
  %103 = getelementptr inbounds %struct.constant, %struct.constant* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %6, align 4
  %106 = call i32 @emit_label_after(i32 %104, i32 %105)
  store i32 %106, i32* %6, align 4
  %107 = load i32, i32* %6, align 4
  %108 = call i32 @INSN_ADDRESSES_NEW(i32 %107, i32 -1)
  %109 = load i32*, i32** @constant_modes, align 8
  %110 = load i32, i32* %7, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %8, align 4
  %115 = call i32 @gen_rtvec(i32 1, i32 %114)
  %116 = load i32, i32* @UNSPECV_POOL_ENTRY, align 4
  %117 = call i32 @gen_rtx_UNSPEC_VOLATILE(i32 %113, i32 %115, i32 %116)
  store i32 %117, i32* %8, align 4
  %118 = load i32, i32* %8, align 4
  %119 = load i32, i32* %6, align 4
  %120 = call i32 @emit_insn_after(i32 %118, i32 %119)
  store i32 %120, i32* %6, align 4
  %121 = load i32, i32* %6, align 4
  %122 = call i32 @INSN_ADDRESSES_NEW(i32 %121, i32 -1)
  br label %123

123:                                              ; preds = %101
  %124 = load %struct.constant*, %struct.constant** %5, align 8
  %125 = getelementptr inbounds %struct.constant, %struct.constant* %124, i32 0, i32 2
  %126 = load %struct.constant*, %struct.constant** %125, align 8
  store %struct.constant* %126, %struct.constant** %5, align 8
  br label %59

127:                                              ; preds = %59
  br label %128

128:                                              ; preds = %127
  %129 = load i32, i32* %7, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %7, align 4
  br label %47

131:                                              ; preds = %47
  %132 = call i32 @GEN_INT(i32 2)
  %133 = call i32 @gen_pool_align(i32 %132)
  %134 = load i32, i32* %6, align 4
  %135 = call i32 @emit_insn_after(i32 %133, i32 %134)
  store i32 %135, i32* %6, align 4
  %136 = load i32, i32* %6, align 4
  %137 = call i32 @INSN_ADDRESSES_NEW(i32 %136, i32 -1)
  %138 = load %struct.constant_pool*, %struct.constant_pool** %3, align 8
  %139 = getelementptr inbounds %struct.constant_pool, %struct.constant_pool* %138, i32 0, i32 1
  %140 = load %struct.constant*, %struct.constant** %139, align 8
  store %struct.constant* %140, %struct.constant** %5, align 8
  br label %141

141:                                              ; preds = %160, %131
  %142 = load %struct.constant*, %struct.constant** %5, align 8
  %143 = icmp ne %struct.constant* %142, null
  br i1 %143, label %144, label %164

144:                                              ; preds = %141
  %145 = load %struct.constant*, %struct.constant** %5, align 8
  %146 = getelementptr inbounds %struct.constant, %struct.constant* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* %6, align 4
  %149 = call i32 @emit_label_after(i32 %147, i32 %148)
  store i32 %149, i32* %6, align 4
  %150 = load i32, i32* %6, align 4
  %151 = call i32 @INSN_ADDRESSES_NEW(i32 %150, i32 -1)
  %152 = load %struct.constant*, %struct.constant** %5, align 8
  %153 = getelementptr inbounds %struct.constant, %struct.constant* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = call i32 @s390_execute_target(i32 %154)
  %156 = load i32, i32* %6, align 4
  %157 = call i32 @emit_insn_after(i32 %155, i32 %156)
  store i32 %157, i32* %6, align 4
  %158 = load i32, i32* %6, align 4
  %159 = call i32 @INSN_ADDRESSES_NEW(i32 %158, i32 -1)
  br label %160

160:                                              ; preds = %144
  %161 = load %struct.constant*, %struct.constant** %5, align 8
  %162 = getelementptr inbounds %struct.constant, %struct.constant* %161, i32 0, i32 2
  %163 = load %struct.constant*, %struct.constant** %162, align 8
  store %struct.constant* %163, %struct.constant** %5, align 8
  br label %141

164:                                              ; preds = %141
  %165 = load i64, i64* @TARGET_CPU_ZARCH, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %173

167:                                              ; preds = %164
  %168 = call i32 (...) @gen_pool_section_end()
  %169 = load i32, i32* %6, align 4
  %170 = call i32 @emit_insn_after(i32 %168, i32 %169)
  store i32 %170, i32* %6, align 4
  %171 = load i32, i32* %6, align 4
  %172 = call i32 @INSN_ADDRESSES_NEW(i32 %171, i32 -1)
  br label %173

173:                                              ; preds = %167, %164
  %174 = load i32, i32* %6, align 4
  %175 = call i32 @emit_barrier_after(i32 %174)
  store i32 %175, i32* %6, align 4
  %176 = load i32, i32* %6, align 4
  %177 = call i32 @INSN_ADDRESSES_NEW(i32 %176, i32 -1)
  %178 = load %struct.constant_pool*, %struct.constant_pool** %3, align 8
  %179 = getelementptr inbounds %struct.constant_pool, %struct.constant_pool* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = call i32 @remove_insn(i32 %180)
  ret void
}

declare dso_local i32 @emit_insn_after(i32, i32) #1

declare dso_local i32 @gen_pool_section_start(...) #1

declare dso_local i32 @INSN_ADDRESSES_NEW(i32, i32) #1

declare dso_local i32 @gen_pool_align(i32) #1

declare dso_local i32 @GEN_INT(i32) #1

declare dso_local i32 @emit_label_after(i32, i32) #1

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i64 @XINT(i32, i32) #1

declare dso_local i32 @XVECLEN(i32, i32) #1

declare dso_local i32 @gen_rtx_MINUS(i32, i32, i32) #1

declare dso_local i32 @XVECEXP(i32, i32, i32) #1

declare dso_local i32 @gen_rtx_LABEL_REF(i32, i32) #1

declare dso_local i32 @gen_rtx_CONST(i32, i32) #1

declare dso_local i32 @gen_rtx_UNSPEC_VOLATILE(i32, i32, i32) #1

declare dso_local i32 @gen_rtvec(i32, i32) #1

declare dso_local i32 @s390_execute_target(i32) #1

declare dso_local i32 @gen_pool_section_end(...) #1

declare dso_local i32 @emit_barrier_after(i32) #1

declare dso_local i32 @remove_insn(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
