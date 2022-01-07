; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_force_new_group.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_force_new_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NULL_RTX = common dso_local global i64 0, align 8
@rs6000_sched_insert_nops = common dso_local global i32 0, align 4
@sched_finish_regroup_exact = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"force: group count = %d, can_issue_more = %d\0A\00", align 1
@previous_group = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"done force: group count = %d, can_issue_more = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i64*, i64, i32*, i32, i32*)* @force_new_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @force_new_group(i32 %0, i32* %1, i64* %2, i64 %3, i32* %4, i32 %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i32* %1, i32** %10, align 8
  store i64* %2, i64** %11, align 8
  store i64 %3, i64* %12, align 8
  store i32* %4, i32** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  %22 = call i32 (...) @rs6000_issue_rate()
  store i32 %22, i32* %18, align 4
  %23 = load i32*, i32** %13, align 8
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %19, align 4
  %25 = load i64, i64* %12, align 8
  %26 = load i64, i64* @NULL_RTX, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %7
  %29 = load i32, i32* %14, align 4
  store i32 %29, i32* %8, align 4
  br label %217

30:                                               ; preds = %7
  %31 = load i32, i32* @rs6000_sched_insert_nops, align 4
  %32 = load i32, i32* @sched_finish_regroup_exact, align 4
  %33 = icmp sgt i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load i32, i32* %14, align 4
  store i32 %35, i32* %8, align 4
  br label %217

36:                                               ; preds = %30
  %37 = load i64*, i64** %11, align 8
  %38 = load i64, i64* %12, align 8
  %39 = call i32 @is_costly_group(i64* %37, i64 %38)
  store i32 %39, i32* %17, align 4
  %40 = load i32, i32* %17, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %36
  %43 = load i32, i32* %14, align 4
  store i32 %43, i32* %8, align 4
  br label %217

44:                                               ; preds = %36
  %45 = load i32, i32* %9, align 4
  %46 = icmp sgt i32 %45, 6
  br i1 %46, label %47, label %53

47:                                               ; preds = %44
  %48 = load i32*, i32** %10, align 8
  %49 = load i32*, i32** %15, align 8
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %14, align 4
  %52 = call i32 @fprintf(i32* %48, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %50, i32 %51)
  br label %53

53:                                               ; preds = %47, %44
  %54 = load i32, i32* @rs6000_sched_insert_nops, align 4
  %55 = load i32, i32* @sched_finish_regroup_exact, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %85

57:                                               ; preds = %53
  %58 = load i32*, i32** %13, align 8
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  store i32 0, i32* %14, align 4
  br label %62

62:                                               ; preds = %61, %57
  %63 = load i32, i32* %14, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %62
  %66 = load i64, i64* %12, align 8
  %67 = call i32 @is_branch_slot_insn(i64 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %65
  %70 = load i32, i32* %14, align 4
  %71 = add nsw i32 %70, -1
  store i32 %71, i32* %14, align 4
  br label %72

72:                                               ; preds = %69, %65, %62
  br label %73

73:                                               ; preds = %76, %72
  %74 = load i32, i32* %14, align 4
  %75 = icmp sgt i32 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %73
  %77 = call i64 (...) @gen_nop()
  store i64 %77, i64* %16, align 8
  %78 = load i64, i64* %16, align 8
  %79 = load i64, i64* %12, align 8
  %80 = call i32 @emit_insn_before(i64 %78, i64 %79)
  %81 = load i32, i32* %14, align 4
  %82 = add nsw i32 %81, -1
  store i32 %82, i32* %14, align 4
  br label %73

83:                                               ; preds = %73
  %84 = load i32*, i32** %13, align 8
  store i32 1, i32* %84, align 4
  store i32 0, i32* %8, align 4
  br label %217

85:                                               ; preds = %53
  %86 = load i32, i32* @rs6000_sched_insert_nops, align 4
  %87 = load i32, i32* @sched_finish_regroup_exact, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %215

89:                                               ; preds = %85
  %90 = load i32, i32* @rs6000_sched_insert_nops, align 4
  store i32 %90, i32* %21, align 4
  %91 = load i32, i32* %14, align 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %89
  %94 = load i32, i32* %18, align 4
  store i32 %94, i32* %14, align 4
  br label %95

95:                                               ; preds = %93, %89
  %96 = load i32, i32* %14, align 4
  %97 = add nsw i32 %96, -1
  store i32 %97, i32* %14, align 4
  %98 = load i32, i32* %14, align 4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %119

100:                                              ; preds = %95
  %101 = load i32, i32* %18, align 4
  %102 = sub nsw i32 %101, 1
  store i32 %102, i32* %14, align 4
  %103 = load i32*, i32** %15, align 8
  %104 = load i32, i32* %103, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %103, align 4
  store i32 1, i32* %19, align 4
  store i32 0, i32* %20, align 4
  br label %106

106:                                              ; preds = %115, %100
  %107 = load i32, i32* %20, align 4
  %108 = load i32, i32* %18, align 4
  %109 = icmp slt i32 %107, %108
  br i1 %109, label %110, label %118

110:                                              ; preds = %106
  %111 = load i64*, i64** %11, align 8
  %112 = load i32, i32* %20, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i64, i64* %111, i64 %113
  store i64 0, i64* %114, align 8
  br label %115

115:                                              ; preds = %110
  %116 = load i32, i32* %20, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %20, align 4
  br label %106

118:                                              ; preds = %106
  br label %119

119:                                              ; preds = %118, %95
  br label %120

120:                                              ; preds = %157, %119
  %121 = load i32, i32* %21, align 4
  %122 = icmp sgt i32 %121, 0
  br i1 %122, label %123, label %160

123:                                              ; preds = %120
  %124 = call i64 (...) @gen_nop()
  store i64 %124, i64* %16, align 8
  %125 = load i64, i64* %16, align 8
  %126 = load i64, i64* %12, align 8
  %127 = call i32 @emit_insn_before(i64 %125, i64 %126)
  %128 = load i32, i32* %14, align 4
  %129 = load i32, i32* %18, align 4
  %130 = sub nsw i32 %129, 1
  %131 = icmp eq i32 %128, %130
  br i1 %131, label %132, label %133

132:                                              ; preds = %123
  store i32 0, i32* %19, align 4
  br label %133

133:                                              ; preds = %132, %123
  %134 = load i32, i32* %14, align 4
  %135 = add nsw i32 %134, -1
  store i32 %135, i32* %14, align 4
  %136 = load i32, i32* %14, align 4
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %157

138:                                              ; preds = %133
  %139 = load i32, i32* %18, align 4
  %140 = sub nsw i32 %139, 1
  store i32 %140, i32* %14, align 4
  %141 = load i32*, i32** %15, align 8
  %142 = load i32, i32* %141, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %141, align 4
  store i32 1, i32* %19, align 4
  store i32 0, i32* %20, align 4
  br label %144

144:                                              ; preds = %153, %138
  %145 = load i32, i32* %20, align 4
  %146 = load i32, i32* %18, align 4
  %147 = icmp slt i32 %145, %146
  br i1 %147, label %148, label %156

148:                                              ; preds = %144
  %149 = load i64*, i64** %11, align 8
  %150 = load i32, i32* %20, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i64, i64* %149, i64 %151
  store i64 0, i64* %152, align 8
  br label %153

153:                                              ; preds = %148
  %154 = load i32, i32* %20, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %20, align 4
  br label %144

156:                                              ; preds = %144
  br label %157

157:                                              ; preds = %156, %133
  %158 = load i32, i32* %21, align 4
  %159 = add nsw i32 %158, -1
  store i32 %159, i32* %21, align 4
  br label %120

160:                                              ; preds = %120
  %161 = load i32, i32* %14, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %14, align 4
  %163 = load i32, i32* %19, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %190, label %165

165:                                              ; preds = %160
  %166 = load i32, i32* %14, align 4
  %167 = icmp eq i32 %166, 1
  br i1 %167, label %168, label %172

168:                                              ; preds = %165
  %169 = load i64, i64* %12, align 8
  %170 = call i32 @is_branch_slot_insn(i64 %169)
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %190

172:                                              ; preds = %168, %165
  %173 = load i32, i32* %14, align 4
  %174 = icmp sle i32 %173, 2
  br i1 %174, label %175, label %179

175:                                              ; preds = %172
  %176 = load i64, i64* %12, align 8
  %177 = call i64 @is_cracked_insn(i64 %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %190, label %179

179:                                              ; preds = %175, %172
  %180 = load i32, i32* %14, align 4
  %181 = load i32, i32* %18, align 4
  %182 = icmp slt i32 %180, %181
  br i1 %182, label %183, label %188

183:                                              ; preds = %179
  %184 = load i64, i64* %12, align 8
  %185 = load i32, i32* @previous_group, align 4
  %186 = call i64 @insn_terminates_group_p(i64 %184, i32 %185)
  %187 = icmp ne i64 %186, 0
  br label %188

188:                                              ; preds = %183, %179
  %189 = phi i1 [ false, %179 ], [ %187, %183 ]
  br label %190

190:                                              ; preds = %188, %175, %168, %160
  %191 = phi i1 [ true, %175 ], [ true, %168 ], [ true, %160 ], [ %189, %188 ]
  %192 = zext i1 %191 to i32
  %193 = load i32*, i32** %13, align 8
  store i32 %192, i32* %193, align 4
  %194 = load i32*, i32** %13, align 8
  %195 = load i32, i32* %194, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %204

197:                                              ; preds = %190
  %198 = load i32, i32* %19, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %204

200:                                              ; preds = %197
  %201 = load i32*, i32** %15, align 8
  %202 = load i32, i32* %201, align 4
  %203 = add nsw i32 %202, -1
  store i32 %203, i32* %201, align 4
  br label %204

204:                                              ; preds = %200, %197, %190
  %205 = load i32, i32* %9, align 4
  %206 = icmp sgt i32 %205, 6
  br i1 %206, label %207, label %213

207:                                              ; preds = %204
  %208 = load i32*, i32** %10, align 8
  %209 = load i32*, i32** %15, align 8
  %210 = load i32, i32* %209, align 4
  %211 = load i32, i32* %14, align 4
  %212 = call i32 @fprintf(i32* %208, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %210, i32 %211)
  br label %213

213:                                              ; preds = %207, %204
  %214 = load i32, i32* %14, align 4
  store i32 %214, i32* %8, align 4
  br label %217

215:                                              ; preds = %85
  %216 = load i32, i32* %14, align 4
  store i32 %216, i32* %8, align 4
  br label %217

217:                                              ; preds = %215, %213, %83, %42, %34, %28
  %218 = load i32, i32* %8, align 4
  ret i32 %218
}

declare dso_local i32 @rs6000_issue_rate(...) #1

declare dso_local i32 @is_costly_group(i64*, i64) #1

declare dso_local i32 @fprintf(i32*, i8*, i32, i32) #1

declare dso_local i32 @is_branch_slot_insn(i64) #1

declare dso_local i64 @gen_nop(...) #1

declare dso_local i32 @emit_insn_before(i64, i64) #1

declare dso_local i64 @is_cracked_insn(i64) #1

declare dso_local i64 @insn_terminates_group_p(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
