; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_budget.c_ubifs_release_budget.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_budget.c_ubifs_release_budget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32, i32, i32, i64, i64, i32, i32, i64, i64 }
%struct.ubifs_budget_req = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64 }

@UBIFS_MAX_INO_DATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ubifs_release_budget(%struct.ubifs_info* %0, %struct.ubifs_budget_req* %1) #0 {
  %3 = alloca %struct.ubifs_info*, align 8
  %4 = alloca %struct.ubifs_budget_req*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %3, align 8
  store %struct.ubifs_budget_req* %1, %struct.ubifs_budget_req** %4, align 8
  %5 = load %struct.ubifs_budget_req*, %struct.ubifs_budget_req** %4, align 8
  %6 = getelementptr inbounds %struct.ubifs_budget_req, %struct.ubifs_budget_req* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp sle i32 %7, 1
  %9 = zext i1 %8 to i32
  %10 = call i32 @ubifs_assert(i32 %9)
  %11 = load %struct.ubifs_budget_req*, %struct.ubifs_budget_req** %4, align 8
  %12 = getelementptr inbounds %struct.ubifs_budget_req, %struct.ubifs_budget_req* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = icmp sle i32 %13, 1
  %15 = zext i1 %14 to i32
  %16 = call i32 @ubifs_assert(i32 %15)
  %17 = load %struct.ubifs_budget_req*, %struct.ubifs_budget_req** %4, align 8
  %18 = getelementptr inbounds %struct.ubifs_budget_req, %struct.ubifs_budget_req* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = icmp sle i32 %19, 1
  %21 = zext i1 %20 to i32
  %22 = call i32 @ubifs_assert(i32 %21)
  %23 = load %struct.ubifs_budget_req*, %struct.ubifs_budget_req** %4, align 8
  %24 = getelementptr inbounds %struct.ubifs_budget_req, %struct.ubifs_budget_req* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = icmp sle i32 %25, 1
  %27 = zext i1 %26 to i32
  %28 = call i32 @ubifs_assert(i32 %27)
  %29 = load %struct.ubifs_budget_req*, %struct.ubifs_budget_req** %4, align 8
  %30 = getelementptr inbounds %struct.ubifs_budget_req, %struct.ubifs_budget_req* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  %32 = icmp sle i32 %31, 1
  %33 = zext i1 %32 to i32
  %34 = call i32 @ubifs_assert(i32 %33)
  %35 = load %struct.ubifs_budget_req*, %struct.ubifs_budget_req** %4, align 8
  %36 = getelementptr inbounds %struct.ubifs_budget_req, %struct.ubifs_budget_req* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @UBIFS_MAX_INO_DATA, align 4
  %39 = icmp sle i32 %37, %38
  %40 = zext i1 %39 to i32
  %41 = call i32 @ubifs_assert(i32 %40)
  %42 = load %struct.ubifs_budget_req*, %struct.ubifs_budget_req** %4, align 8
  %43 = getelementptr inbounds %struct.ubifs_budget_req, %struct.ubifs_budget_req* %42, i32 0, i32 6
  %44 = load i32, i32* %43, align 8
  %45 = icmp sle i32 %44, 4
  %46 = zext i1 %45 to i32
  %47 = call i32 @ubifs_assert(i32 %46)
  %48 = load %struct.ubifs_budget_req*, %struct.ubifs_budget_req** %4, align 8
  %49 = getelementptr inbounds %struct.ubifs_budget_req, %struct.ubifs_budget_req* %48, i32 0, i32 7
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @UBIFS_MAX_INO_DATA, align 4
  %52 = mul nsw i32 %51, 4
  %53 = icmp sle i32 %50, %52
  %54 = zext i1 %53 to i32
  %55 = call i32 @ubifs_assert(i32 %54)
  %56 = load %struct.ubifs_budget_req*, %struct.ubifs_budget_req** %4, align 8
  %57 = getelementptr inbounds %struct.ubifs_budget_req, %struct.ubifs_budget_req* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 4
  %59 = and i32 %58, 7
  %60 = icmp ne i32 %59, 0
  %61 = xor i1 %60, true
  %62 = zext i1 %61 to i32
  %63 = call i32 @ubifs_assert(i32 %62)
  %64 = load %struct.ubifs_budget_req*, %struct.ubifs_budget_req** %4, align 8
  %65 = getelementptr inbounds %struct.ubifs_budget_req, %struct.ubifs_budget_req* %64, i32 0, i32 7
  %66 = load i32, i32* %65, align 4
  %67 = and i32 %66, 7
  %68 = icmp ne i32 %67, 0
  %69 = xor i1 %68, true
  %70 = zext i1 %69 to i32
  %71 = call i32 @ubifs_assert(i32 %70)
  %72 = load %struct.ubifs_budget_req*, %struct.ubifs_budget_req** %4, align 8
  %73 = getelementptr inbounds %struct.ubifs_budget_req, %struct.ubifs_budget_req* %72, i32 0, i32 11
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %95, label %76

76:                                               ; preds = %2
  %77 = load %struct.ubifs_budget_req*, %struct.ubifs_budget_req** %4, align 8
  %78 = getelementptr inbounds %struct.ubifs_budget_req, %struct.ubifs_budget_req* %77, i32 0, i32 8
  %79 = load i64, i64* %78, align 8
  %80 = icmp sge i64 %79, 0
  %81 = zext i1 %80 to i32
  %82 = call i32 @ubifs_assert(i32 %81)
  %83 = load %struct.ubifs_budget_req*, %struct.ubifs_budget_req** %4, align 8
  %84 = getelementptr inbounds %struct.ubifs_budget_req, %struct.ubifs_budget_req* %83, i32 0, i32 9
  %85 = load i64, i64* %84, align 8
  %86 = icmp sge i64 %85, 0
  %87 = zext i1 %86 to i32
  %88 = call i32 @ubifs_assert(i32 %87)
  %89 = load %struct.ubifs_budget_req*, %struct.ubifs_budget_req** %4, align 8
  %90 = getelementptr inbounds %struct.ubifs_budget_req, %struct.ubifs_budget_req* %89, i32 0, i32 10
  %91 = load i64, i64* %90, align 8
  %92 = icmp sge i64 %91, 0
  %93 = zext i1 %92 to i32
  %94 = call i32 @ubifs_assert(i32 %93)
  br label %95

95:                                               ; preds = %76, %2
  %96 = load %struct.ubifs_budget_req*, %struct.ubifs_budget_req** %4, align 8
  %97 = getelementptr inbounds %struct.ubifs_budget_req, %struct.ubifs_budget_req* %96, i32 0, i32 11
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %116

100:                                              ; preds = %95
  %101 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %102 = load %struct.ubifs_budget_req*, %struct.ubifs_budget_req** %4, align 8
  %103 = call i64 @calc_data_growth(%struct.ubifs_info* %101, %struct.ubifs_budget_req* %102)
  %104 = load %struct.ubifs_budget_req*, %struct.ubifs_budget_req** %4, align 8
  %105 = getelementptr inbounds %struct.ubifs_budget_req, %struct.ubifs_budget_req* %104, i32 0, i32 9
  store i64 %103, i64* %105, align 8
  %106 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %107 = load %struct.ubifs_budget_req*, %struct.ubifs_budget_req** %4, align 8
  %108 = call i64 @calc_dd_growth(%struct.ubifs_info* %106, %struct.ubifs_budget_req* %107)
  %109 = load %struct.ubifs_budget_req*, %struct.ubifs_budget_req** %4, align 8
  %110 = getelementptr inbounds %struct.ubifs_budget_req, %struct.ubifs_budget_req* %109, i32 0, i32 10
  store i64 %108, i64* %110, align 8
  %111 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %112 = load %struct.ubifs_budget_req*, %struct.ubifs_budget_req** %4, align 8
  %113 = call i64 @calc_idx_growth(%struct.ubifs_info* %111, %struct.ubifs_budget_req* %112)
  %114 = load %struct.ubifs_budget_req*, %struct.ubifs_budget_req** %4, align 8
  %115 = getelementptr inbounds %struct.ubifs_budget_req, %struct.ubifs_budget_req* %114, i32 0, i32 8
  store i64 %113, i64* %115, align 8
  br label %116

116:                                              ; preds = %100, %95
  %117 = load %struct.ubifs_budget_req*, %struct.ubifs_budget_req** %4, align 8
  %118 = getelementptr inbounds %struct.ubifs_budget_req, %struct.ubifs_budget_req* %117, i32 0, i32 9
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %127, label %121

121:                                              ; preds = %116
  %122 = load %struct.ubifs_budget_req*, %struct.ubifs_budget_req** %4, align 8
  %123 = getelementptr inbounds %struct.ubifs_budget_req, %struct.ubifs_budget_req* %122, i32 0, i32 10
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %127, label %126

126:                                              ; preds = %121
  br label %230

127:                                              ; preds = %121, %116
  %128 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %129 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %128, i32 0, i32 7
  store i64 0, i64* %129, align 8
  %130 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %131 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %130, i32 0, i32 8
  store i64 0, i64* %131, align 8
  %132 = call i32 (...) @smp_wmb()
  %133 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %134 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %133, i32 0, i32 5
  %135 = call i32 @spin_lock(i32* %134)
  %136 = load %struct.ubifs_budget_req*, %struct.ubifs_budget_req** %4, align 8
  %137 = getelementptr inbounds %struct.ubifs_budget_req, %struct.ubifs_budget_req* %136, i32 0, i32 8
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %140 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = sext i32 %141 to i64
  %143 = sub nsw i64 %142, %138
  %144 = trunc i64 %143 to i32
  store i32 %144, i32* %140, align 8
  %145 = load %struct.ubifs_budget_req*, %struct.ubifs_budget_req** %4, align 8
  %146 = getelementptr inbounds %struct.ubifs_budget_req, %struct.ubifs_budget_req* %145, i32 0, i32 8
  %147 = load i64, i64* %146, align 8
  %148 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %149 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %148, i32 0, i32 6
  %150 = load i32, i32* %149, align 4
  %151 = sext i32 %150 to i64
  %152 = add nsw i64 %151, %147
  %153 = trunc i64 %152 to i32
  store i32 %153, i32* %149, align 4
  %154 = load %struct.ubifs_budget_req*, %struct.ubifs_budget_req** %4, align 8
  %155 = getelementptr inbounds %struct.ubifs_budget_req, %struct.ubifs_budget_req* %154, i32 0, i32 9
  %156 = load i64, i64* %155, align 8
  %157 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %158 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = sext i32 %159 to i64
  %161 = sub nsw i64 %160, %156
  %162 = trunc i64 %161 to i32
  store i32 %162, i32* %158, align 4
  %163 = load %struct.ubifs_budget_req*, %struct.ubifs_budget_req** %4, align 8
  %164 = getelementptr inbounds %struct.ubifs_budget_req, %struct.ubifs_budget_req* %163, i32 0, i32 10
  %165 = load i64, i64* %164, align 8
  %166 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %167 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 8
  %169 = sext i32 %168 to i64
  %170 = sub nsw i64 %169, %165
  %171 = trunc i64 %170 to i32
  store i32 %171, i32* %167, align 8
  %172 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %173 = call i64 @ubifs_calc_min_idx_lebs(%struct.ubifs_info* %172)
  %174 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %175 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %174, i32 0, i32 3
  store i64 %173, i64* %175, align 8
  %176 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %177 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = icmp sge i32 %178, 0
  %180 = zext i1 %179 to i32
  %181 = call i32 @ubifs_assert(i32 %180)
  %182 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %183 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = icmp sge i32 %184, 0
  %186 = zext i1 %185 to i32
  %187 = call i32 @ubifs_assert(i32 %186)
  %188 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %189 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 8
  %191 = icmp sge i32 %190, 0
  %192 = zext i1 %191 to i32
  %193 = call i32 @ubifs_assert(i32 %192)
  %194 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %195 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %194, i32 0, i32 3
  %196 = load i64, i64* %195, align 8
  %197 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %198 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %197, i32 0, i32 4
  %199 = load i64, i64* %198, align 8
  %200 = icmp slt i64 %196, %199
  %201 = zext i1 %200 to i32
  %202 = call i32 @ubifs_assert(i32 %201)
  %203 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %204 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = and i32 %205, 7
  %207 = icmp ne i32 %206, 0
  %208 = xor i1 %207, true
  %209 = zext i1 %208 to i32
  %210 = call i32 @ubifs_assert(i32 %209)
  %211 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %212 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = and i32 %213, 7
  %215 = icmp ne i32 %214, 0
  %216 = xor i1 %215, true
  %217 = zext i1 %216 to i32
  %218 = call i32 @ubifs_assert(i32 %217)
  %219 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %220 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %219, i32 0, i32 2
  %221 = load i32, i32* %220, align 8
  %222 = and i32 %221, 7
  %223 = icmp ne i32 %222, 0
  %224 = xor i1 %223, true
  %225 = zext i1 %224 to i32
  %226 = call i32 @ubifs_assert(i32 %225)
  %227 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %228 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %227, i32 0, i32 5
  %229 = call i32 @spin_unlock(i32* %228)
  br label %230

230:                                              ; preds = %127, %126
  ret void
}

declare dso_local i32 @ubifs_assert(i32) #1

declare dso_local i64 @calc_data_growth(%struct.ubifs_info*, %struct.ubifs_budget_req*) #1

declare dso_local i64 @calc_dd_growth(%struct.ubifs_info*, %struct.ubifs_budget_req*) #1

declare dso_local i64 @calc_idx_growth(%struct.ubifs_info*, %struct.ubifs_budget_req*) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @ubifs_calc_min_idx_lebs(%struct.ubifs_info*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
