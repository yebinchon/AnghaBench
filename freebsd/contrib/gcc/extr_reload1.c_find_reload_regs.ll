; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_reload1.c_find_reload_regs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_reload1.c_find_reload_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, i64, i32, i32, i64, i64, i32 }
%struct.insn_chain = type { i32, %struct.TYPE_4__*, i32, i32 }

@hard_regno_nregs = common dso_local global i32** null, align 8
@reload_order = common dso_local global i32* null, align 8
@n_reloads = common dso_local global i32 0, align 4
@rld = common dso_local global %struct.TYPE_4__* null, align 8
@used_spill_regs_local = common dso_local global i32 0, align 4
@dump_file = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"Spilling for insn %d.\0A\00", align 1
@reload_reg_class_lower = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"reload failure for reload %d\0A\00", align 1
@failure = common dso_local global i32 0, align 4
@used_spill_regs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.insn_chain*)* @find_reload_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @find_reload_regs(%struct.insn_chain* %0) #0 {
  %2 = alloca %struct.insn_chain*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.insn_chain* %0, %struct.insn_chain** %2, align 8
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %77, %1
  %7 = load i32, i32* %3, align 4
  %8 = load %struct.insn_chain*, %struct.insn_chain** %2, align 8
  %9 = getelementptr inbounds %struct.insn_chain, %struct.insn_chain* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp slt i32 %7, %10
  br i1 %11, label %12, label %80

12:                                               ; preds = %6
  %13 = load %struct.insn_chain*, %struct.insn_chain** %2, align 8
  %14 = getelementptr inbounds %struct.insn_chain, %struct.insn_chain* %13, i32 0, i32 1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 6
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %63

22:                                               ; preds = %12
  %23 = load %struct.insn_chain*, %struct.insn_chain** %2, align 8
  %24 = getelementptr inbounds %struct.insn_chain, %struct.insn_chain* %23, i32 0, i32 1
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = load i32, i32* %3, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 6
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @REGNO(i64 %30)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = load %struct.insn_chain*, %struct.insn_chain** %2, align 8
  %34 = getelementptr inbounds %struct.insn_chain, %struct.insn_chain* %33, i32 0, i32 1
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = load i32, i32* %3, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  store i32 %32, i32* %39, align 8
  %40 = load i32**, i32*** @hard_regno_nregs, align 8
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32*, i32** %40, i64 %42
  %44 = load i32*, i32** %43, align 8
  %45 = load %struct.insn_chain*, %struct.insn_chain** %2, align 8
  %46 = getelementptr inbounds %struct.insn_chain, %struct.insn_chain* %45, i32 0, i32 1
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = load i32, i32* %3, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 6
  %52 = load i64, i64* %51, align 8
  %53 = call i64 @GET_MODE(i64 %52)
  %54 = getelementptr inbounds i32, i32* %44, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.insn_chain*, %struct.insn_chain** %2, align 8
  %57 = getelementptr inbounds %struct.insn_chain, %struct.insn_chain* %56, i32 0, i32 1
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = load i32, i32* %3, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 7
  store i32 %55, i32* %62, align 8
  br label %71

63:                                               ; preds = %12
  %64 = load %struct.insn_chain*, %struct.insn_chain** %2, align 8
  %65 = getelementptr inbounds %struct.insn_chain, %struct.insn_chain* %64, i32 0, i32 1
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = load i32, i32* %3, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  store i32 -1, i32* %70, align 8
  br label %71

71:                                               ; preds = %63, %22
  %72 = load i32, i32* %3, align 4
  %73 = load i32*, i32** @reload_order, align 8
  %74 = load i32, i32* %3, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  store i32 %72, i32* %76, align 4
  br label %77

77:                                               ; preds = %71
  %78 = load i32, i32* %3, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %3, align 4
  br label %6

80:                                               ; preds = %6
  %81 = load %struct.insn_chain*, %struct.insn_chain** %2, align 8
  %82 = getelementptr inbounds %struct.insn_chain, %struct.insn_chain* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  store i32 %83, i32* @n_reloads, align 4
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rld, align 8
  %85 = load %struct.insn_chain*, %struct.insn_chain** %2, align 8
  %86 = getelementptr inbounds %struct.insn_chain, %struct.insn_chain* %85, i32 0, i32 1
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = load i32, i32* @n_reloads, align 4
  %89 = sext i32 %88 to i64
  %90 = mul i64 %89, 4
  %91 = trunc i64 %90 to i32
  %92 = call i32 @memcpy(%struct.TYPE_4__* %84, %struct.TYPE_4__* %87, i32 %91)
  %93 = load i32, i32* @used_spill_regs_local, align 4
  %94 = call i32 @CLEAR_HARD_REG_SET(i32 %93)
  %95 = load i64, i64* @dump_file, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %104

97:                                               ; preds = %80
  %98 = load i64, i64* @dump_file, align 8
  %99 = load %struct.insn_chain*, %struct.insn_chain** %2, align 8
  %100 = getelementptr inbounds %struct.insn_chain, %struct.insn_chain* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @INSN_UID(i32 %101)
  %103 = call i32 @fprintf(i64 %98, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %102)
  br label %104

104:                                              ; preds = %97, %80
  %105 = load i32*, i32** @reload_order, align 8
  %106 = load i32, i32* @n_reloads, align 4
  %107 = load i32, i32* @reload_reg_class_lower, align 4
  %108 = call i32 @qsort(i32* %105, i32 %106, i32 2, i32 %107)
  %109 = load %struct.insn_chain*, %struct.insn_chain** %2, align 8
  %110 = call i32 @order_regs_for_reload(%struct.insn_chain* %109)
  store i32 0, i32* %3, align 4
  br label %111

111:                                              ; preds = %185, %104
  %112 = load i32, i32* %3, align 4
  %113 = load i32, i32* @n_reloads, align 4
  %114 = icmp slt i32 %112, %113
  br i1 %114, label %115, label %188

115:                                              ; preds = %111
  %116 = load i32*, i32** @reload_order, align 8
  %117 = load i32, i32* %3, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  %120 = load i32, i32* %119, align 4
  store i32 %120, i32* %5, align 4
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rld, align 8
  %122 = load i32, i32* %5, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %144, label %128

128:                                              ; preds = %115
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rld, align 8
  %130 = load i32, i32* %5, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 2
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %144, label %136

136:                                              ; preds = %128
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rld, align 8
  %138 = load i32, i32* %5, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 5
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %184

144:                                              ; preds = %136, %128, %115
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rld, align 8
  %146 = load i32, i32* %5, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 4
  %150 = load i32, i32* %149, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %184, label %152

152:                                              ; preds = %144
  %153 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rld, align 8
  %154 = load i32, i32* %5, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = icmp eq i32 %158, -1
  br i1 %159, label %160, label %184

160:                                              ; preds = %152
  %161 = load %struct.insn_chain*, %struct.insn_chain** %2, align 8
  %162 = load i32, i32* %3, align 4
  %163 = call i32 @find_reg(%struct.insn_chain* %161, i32 %162)
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %183, label %165

165:                                              ; preds = %160
  %166 = load i64, i64* @dump_file, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %172

168:                                              ; preds = %165
  %169 = load i64, i64* @dump_file, align 8
  %170 = load i32, i32* %5, align 4
  %171 = call i32 @fprintf(i64 %169, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %170)
  br label %172

172:                                              ; preds = %168, %165
  %173 = load %struct.insn_chain*, %struct.insn_chain** %2, align 8
  %174 = getelementptr inbounds %struct.insn_chain, %struct.insn_chain* %173, i32 0, i32 3
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rld, align 8
  %177 = load i32, i32* %5, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i64 %178
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i32 0, i32 3
  %181 = load i32, i32* %180, align 8
  %182 = call i32 @spill_failure(i32 %175, i32 %181)
  store i32 1, i32* @failure, align 4
  br label %206

183:                                              ; preds = %160
  br label %184

184:                                              ; preds = %183, %152, %144, %136
  br label %185

185:                                              ; preds = %184
  %186 = load i32, i32* %3, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %3, align 4
  br label %111

188:                                              ; preds = %111
  %189 = load %struct.insn_chain*, %struct.insn_chain** %2, align 8
  %190 = getelementptr inbounds %struct.insn_chain, %struct.insn_chain* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 8
  %192 = load i32, i32* @used_spill_regs_local, align 4
  %193 = call i32 @COPY_HARD_REG_SET(i32 %191, i32 %192)
  %194 = load i32, i32* @used_spill_regs, align 4
  %195 = load i32, i32* @used_spill_regs_local, align 4
  %196 = call i32 @IOR_HARD_REG_SET(i32 %194, i32 %195)
  %197 = load %struct.insn_chain*, %struct.insn_chain** %2, align 8
  %198 = getelementptr inbounds %struct.insn_chain, %struct.insn_chain* %197, i32 0, i32 1
  %199 = load %struct.TYPE_4__*, %struct.TYPE_4__** %198, align 8
  %200 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rld, align 8
  %201 = load i32, i32* @n_reloads, align 4
  %202 = sext i32 %201 to i64
  %203 = mul i64 %202, 4
  %204 = trunc i64 %203 to i32
  %205 = call i32 @memcpy(%struct.TYPE_4__* %199, %struct.TYPE_4__* %200, i32 %204)
  br label %206

206:                                              ; preds = %188, %172
  ret void
}

declare dso_local i32 @REGNO(i64) #1

declare dso_local i64 @GET_MODE(i64) #1

declare dso_local i32 @memcpy(%struct.TYPE_4__*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @CLEAR_HARD_REG_SET(i32) #1

declare dso_local i32 @fprintf(i64, i8*, i32) #1

declare dso_local i32 @INSN_UID(i32) #1

declare dso_local i32 @qsort(i32*, i32, i32, i32) #1

declare dso_local i32 @order_regs_for_reload(%struct.insn_chain*) #1

declare dso_local i32 @find_reg(%struct.insn_chain*, i32) #1

declare dso_local i32 @spill_failure(i32, i32) #1

declare dso_local i32 @COPY_HARD_REG_SET(i32, i32) #1

declare dso_local i32 @IOR_HARD_REG_SET(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
