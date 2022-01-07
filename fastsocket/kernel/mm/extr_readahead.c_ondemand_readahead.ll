; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_readahead.c_ondemand_readahead.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_readahead.c_ondemand_readahead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.address_space = type { i32 }
%struct.file_ra_state = type { i64, i64, i64, i64, i32 }
%struct.file = type { i32 }

@PAGE_CACHE_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.address_space*, %struct.file_ra_state*, %struct.file*, i32, i64, i64)* @ondemand_readahead to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ondemand_readahead(%struct.address_space* %0, %struct.file_ra_state* %1, %struct.file* %2, i32 %3, i64 %4, i64 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.address_space*, align 8
  %9 = alloca %struct.file_ra_state*, align 8
  %10 = alloca %struct.file*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.address_space* %0, %struct.address_space** %8, align 8
  store %struct.file_ra_state* %1, %struct.file_ra_state** %9, align 8
  store %struct.file* %2, %struct.file** %10, align 8
  store i32 %3, i32* %11, align 4
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  %16 = load %struct.file_ra_state*, %struct.file_ra_state** %9, align 8
  %17 = getelementptr inbounds %struct.file_ra_state, %struct.file_ra_state* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 8
  %19 = call i64 @max_sane_readahead(i32 %18)
  store i64 %19, i64* %14, align 8
  %20 = load i64, i64* %12, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %6
  br label %142

23:                                               ; preds = %6
  %24 = load i64, i64* %12, align 8
  %25 = load %struct.file_ra_state*, %struct.file_ra_state** %9, align 8
  %26 = getelementptr inbounds %struct.file_ra_state, %struct.file_ra_state* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.file_ra_state*, %struct.file_ra_state** %9, align 8
  %29 = getelementptr inbounds %struct.file_ra_state, %struct.file_ra_state* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = add i64 %27, %30
  %32 = load %struct.file_ra_state*, %struct.file_ra_state** %9, align 8
  %33 = getelementptr inbounds %struct.file_ra_state, %struct.file_ra_state* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = sub i64 %31, %34
  %36 = icmp eq i64 %24, %35
  br i1 %36, label %47, label %37

37:                                               ; preds = %23
  %38 = load i64, i64* %12, align 8
  %39 = load %struct.file_ra_state*, %struct.file_ra_state** %9, align 8
  %40 = getelementptr inbounds %struct.file_ra_state, %struct.file_ra_state* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.file_ra_state*, %struct.file_ra_state** %9, align 8
  %43 = getelementptr inbounds %struct.file_ra_state, %struct.file_ra_state* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = add i64 %41, %44
  %46 = icmp eq i64 %38, %45
  br i1 %46, label %47, label %66

47:                                               ; preds = %37, %23
  %48 = load %struct.file_ra_state*, %struct.file_ra_state** %9, align 8
  %49 = getelementptr inbounds %struct.file_ra_state, %struct.file_ra_state* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.file_ra_state*, %struct.file_ra_state** %9, align 8
  %52 = getelementptr inbounds %struct.file_ra_state, %struct.file_ra_state* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = add i64 %53, %50
  store i64 %54, i64* %52, align 8
  %55 = load %struct.file_ra_state*, %struct.file_ra_state** %9, align 8
  %56 = load i64, i64* %14, align 8
  %57 = call i8* @get_next_ra_size(%struct.file_ra_state* %55, i64 %56)
  %58 = ptrtoint i8* %57 to i64
  %59 = load %struct.file_ra_state*, %struct.file_ra_state** %9, align 8
  %60 = getelementptr inbounds %struct.file_ra_state, %struct.file_ra_state* %59, i32 0, i32 1
  store i64 %58, i64* %60, align 8
  %61 = load %struct.file_ra_state*, %struct.file_ra_state** %9, align 8
  %62 = getelementptr inbounds %struct.file_ra_state, %struct.file_ra_state* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.file_ra_state*, %struct.file_ra_state** %9, align 8
  %65 = getelementptr inbounds %struct.file_ra_state, %struct.file_ra_state* %64, i32 0, i32 2
  store i64 %63, i64* %65, align 8
  br label %170

66:                                               ; preds = %37
  %67 = load i32, i32* %11, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %112

69:                                               ; preds = %66
  %70 = call i32 (...) @rcu_read_lock()
  %71 = load %struct.address_space*, %struct.address_space** %8, align 8
  %72 = getelementptr inbounds %struct.address_space, %struct.address_space* %71, i32 0, i32 0
  %73 = load i64, i64* %12, align 8
  %74 = add i64 %73, 1
  %75 = load i64, i64* %14, align 8
  %76 = call i64 @radix_tree_next_hole(i32* %72, i64 %74, i64 %75)
  store i64 %76, i64* %15, align 8
  %77 = call i32 (...) @rcu_read_unlock()
  %78 = load i64, i64* %15, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %69
  %81 = load i64, i64* %15, align 8
  %82 = load i64, i64* %12, align 8
  %83 = sub i64 %81, %82
  %84 = load i64, i64* %14, align 8
  %85 = icmp ugt i64 %83, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %80, %69
  store i64 0, i64* %7, align 8
  br label %203

87:                                               ; preds = %80
  %88 = load i64, i64* %15, align 8
  %89 = load %struct.file_ra_state*, %struct.file_ra_state** %9, align 8
  %90 = getelementptr inbounds %struct.file_ra_state, %struct.file_ra_state* %89, i32 0, i32 0
  store i64 %88, i64* %90, align 8
  %91 = load i64, i64* %15, align 8
  %92 = load i64, i64* %12, align 8
  %93 = sub i64 %91, %92
  %94 = load %struct.file_ra_state*, %struct.file_ra_state** %9, align 8
  %95 = getelementptr inbounds %struct.file_ra_state, %struct.file_ra_state* %94, i32 0, i32 1
  store i64 %93, i64* %95, align 8
  %96 = load i64, i64* %13, align 8
  %97 = load %struct.file_ra_state*, %struct.file_ra_state** %9, align 8
  %98 = getelementptr inbounds %struct.file_ra_state, %struct.file_ra_state* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = add i64 %99, %96
  store i64 %100, i64* %98, align 8
  %101 = load %struct.file_ra_state*, %struct.file_ra_state** %9, align 8
  %102 = load i64, i64* %14, align 8
  %103 = call i8* @get_next_ra_size(%struct.file_ra_state* %101, i64 %102)
  %104 = ptrtoint i8* %103 to i64
  %105 = load %struct.file_ra_state*, %struct.file_ra_state** %9, align 8
  %106 = getelementptr inbounds %struct.file_ra_state, %struct.file_ra_state* %105, i32 0, i32 1
  store i64 %104, i64* %106, align 8
  %107 = load %struct.file_ra_state*, %struct.file_ra_state** %9, align 8
  %108 = getelementptr inbounds %struct.file_ra_state, %struct.file_ra_state* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.file_ra_state*, %struct.file_ra_state** %9, align 8
  %111 = getelementptr inbounds %struct.file_ra_state, %struct.file_ra_state* %110, i32 0, i32 2
  store i64 %109, i64* %111, align 8
  br label %170

112:                                              ; preds = %66
  %113 = load i64, i64* %13, align 8
  %114 = load i64, i64* %14, align 8
  %115 = icmp ugt i64 %113, %114
  br i1 %115, label %116, label %117

116:                                              ; preds = %112
  br label %142

117:                                              ; preds = %112
  %118 = load i64, i64* %12, align 8
  %119 = load %struct.file_ra_state*, %struct.file_ra_state** %9, align 8
  %120 = getelementptr inbounds %struct.file_ra_state, %struct.file_ra_state* %119, i32 0, i32 3
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @PAGE_CACHE_SHIFT, align 8
  %123 = lshr i64 %121, %122
  %124 = sub i64 %118, %123
  %125 = icmp ule i64 %124, 1
  br i1 %125, label %126, label %127

126:                                              ; preds = %117
  br label %142

127:                                              ; preds = %117
  %128 = load %struct.address_space*, %struct.address_space** %8, align 8
  %129 = load %struct.file_ra_state*, %struct.file_ra_state** %9, align 8
  %130 = load i64, i64* %12, align 8
  %131 = load i64, i64* %13, align 8
  %132 = load i64, i64* %14, align 8
  %133 = call i64 @try_context_readahead(%struct.address_space* %128, %struct.file_ra_state* %129, i64 %130, i64 %131, i64 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %127
  br label %170

136:                                              ; preds = %127
  %137 = load %struct.address_space*, %struct.address_space** %8, align 8
  %138 = load %struct.file*, %struct.file** %10, align 8
  %139 = load i64, i64* %12, align 8
  %140 = load i64, i64* %13, align 8
  %141 = call i64 @__do_page_cache_readahead(%struct.address_space* %137, %struct.file* %138, i64 %139, i64 %140, i32 0)
  store i64 %141, i64* %7, align 8
  br label %203

142:                                              ; preds = %126, %116, %22
  %143 = load i64, i64* %12, align 8
  %144 = load %struct.file_ra_state*, %struct.file_ra_state** %9, align 8
  %145 = getelementptr inbounds %struct.file_ra_state, %struct.file_ra_state* %144, i32 0, i32 0
  store i64 %143, i64* %145, align 8
  %146 = load i64, i64* %13, align 8
  %147 = load i64, i64* %14, align 8
  %148 = call i64 @get_init_ra_size(i64 %146, i64 %147)
  %149 = load %struct.file_ra_state*, %struct.file_ra_state** %9, align 8
  %150 = getelementptr inbounds %struct.file_ra_state, %struct.file_ra_state* %149, i32 0, i32 1
  store i64 %148, i64* %150, align 8
  %151 = load %struct.file_ra_state*, %struct.file_ra_state** %9, align 8
  %152 = getelementptr inbounds %struct.file_ra_state, %struct.file_ra_state* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* %13, align 8
  %155 = icmp ugt i64 %153, %154
  br i1 %155, label %156, label %162

156:                                              ; preds = %142
  %157 = load %struct.file_ra_state*, %struct.file_ra_state** %9, align 8
  %158 = getelementptr inbounds %struct.file_ra_state, %struct.file_ra_state* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* %13, align 8
  %161 = sub i64 %159, %160
  br label %166

162:                                              ; preds = %142
  %163 = load %struct.file_ra_state*, %struct.file_ra_state** %9, align 8
  %164 = getelementptr inbounds %struct.file_ra_state, %struct.file_ra_state* %163, i32 0, i32 1
  %165 = load i64, i64* %164, align 8
  br label %166

166:                                              ; preds = %162, %156
  %167 = phi i64 [ %161, %156 ], [ %165, %162 ]
  %168 = load %struct.file_ra_state*, %struct.file_ra_state** %9, align 8
  %169 = getelementptr inbounds %struct.file_ra_state, %struct.file_ra_state* %168, i32 0, i32 2
  store i64 %167, i64* %169, align 8
  br label %170

170:                                              ; preds = %166, %135, %87, %47
  %171 = load i64, i64* %12, align 8
  %172 = load %struct.file_ra_state*, %struct.file_ra_state** %9, align 8
  %173 = getelementptr inbounds %struct.file_ra_state, %struct.file_ra_state* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = icmp eq i64 %171, %174
  br i1 %175, label %176, label %198

176:                                              ; preds = %170
  %177 = load %struct.file_ra_state*, %struct.file_ra_state** %9, align 8
  %178 = getelementptr inbounds %struct.file_ra_state, %struct.file_ra_state* %177, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  %180 = load %struct.file_ra_state*, %struct.file_ra_state** %9, align 8
  %181 = getelementptr inbounds %struct.file_ra_state, %struct.file_ra_state* %180, i32 0, i32 2
  %182 = load i64, i64* %181, align 8
  %183 = icmp eq i64 %179, %182
  br i1 %183, label %184, label %198

184:                                              ; preds = %176
  %185 = load %struct.file_ra_state*, %struct.file_ra_state** %9, align 8
  %186 = load i64, i64* %14, align 8
  %187 = call i8* @get_next_ra_size(%struct.file_ra_state* %185, i64 %186)
  %188 = ptrtoint i8* %187 to i64
  %189 = load %struct.file_ra_state*, %struct.file_ra_state** %9, align 8
  %190 = getelementptr inbounds %struct.file_ra_state, %struct.file_ra_state* %189, i32 0, i32 2
  store i64 %188, i64* %190, align 8
  %191 = load %struct.file_ra_state*, %struct.file_ra_state** %9, align 8
  %192 = getelementptr inbounds %struct.file_ra_state, %struct.file_ra_state* %191, i32 0, i32 2
  %193 = load i64, i64* %192, align 8
  %194 = load %struct.file_ra_state*, %struct.file_ra_state** %9, align 8
  %195 = getelementptr inbounds %struct.file_ra_state, %struct.file_ra_state* %194, i32 0, i32 1
  %196 = load i64, i64* %195, align 8
  %197 = add i64 %196, %193
  store i64 %197, i64* %195, align 8
  br label %198

198:                                              ; preds = %184, %176, %170
  %199 = load %struct.file_ra_state*, %struct.file_ra_state** %9, align 8
  %200 = load %struct.address_space*, %struct.address_space** %8, align 8
  %201 = load %struct.file*, %struct.file** %10, align 8
  %202 = call i64 @ra_submit(%struct.file_ra_state* %199, %struct.address_space* %200, %struct.file* %201)
  store i64 %202, i64* %7, align 8
  br label %203

203:                                              ; preds = %198, %136, %86
  %204 = load i64, i64* %7, align 8
  ret i64 %204
}

declare dso_local i64 @max_sane_readahead(i32) #1

declare dso_local i8* @get_next_ra_size(%struct.file_ra_state*, i64) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i64 @radix_tree_next_hole(i32*, i64, i64) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i64 @try_context_readahead(%struct.address_space*, %struct.file_ra_state*, i64, i64, i64) #1

declare dso_local i64 @__do_page_cache_readahead(%struct.address_space*, %struct.file*, i64, i64, i32) #1

declare dso_local i64 @get_init_ra_size(i64, i64) #1

declare dso_local i64 @ra_submit(%struct.file_ra_state*, %struct.address_space*, %struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
