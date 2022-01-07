; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_bitmap.c_determine_search_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_bitmap.c_determine_search_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i64, i64, i64, %struct.TYPE_20__*, i64, i64 }
%struct.TYPE_20__ = type { i64, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.TYPE_19__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_21__*, i32)* @determine_search_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @determine_search_start(%struct.TYPE_21__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_21__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %7, i32 0, i32 3
  %9 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 1
  %11 = load %struct.super_block*, %struct.super_block** %10, align 8
  store %struct.super_block* %11, %struct.super_block** %5, align 8
  %12 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %12, i32 0, i32 5
  store i64 0, i64* %13, align 8
  %14 = load %struct.super_block*, %struct.super_block** %5, align 8
  %15 = call i64 @SB_BLOCK_COUNT(%struct.super_block* %14)
  %16 = sub nsw i64 %15, 1
  %17 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %17, i32 0, i32 4
  store i64 %16, i64* %18, align 8
  %19 = load %struct.super_block*, %struct.super_block** %5, align 8
  %20 = call i64 @concentrating_formatted_nodes(%struct.super_block* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %2
  %23 = load %struct.super_block*, %struct.super_block** %5, align 8
  %24 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %25 = call i32 @set_border_in_hint(%struct.super_block* %23, %struct.TYPE_21__* %24)
  br label %26

26:                                               ; preds = %22, %2
  %27 = load %struct.super_block*, %struct.super_block** %5, align 8
  %28 = call i64 @displacing_large_files(%struct.super_block* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %26
  %31 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %30
  %36 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %37 = call i64 @this_blocknr_allocation_would_make_it_a_large_file(%struct.TYPE_21__* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %41 = call i32 @displace_large_file(%struct.TYPE_21__* %40)
  br label %184

42:                                               ; preds = %35, %30, %26
  %43 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %42
  %48 = load %struct.super_block*, %struct.super_block** %5, align 8
  %49 = call i64 @TEST_OPTION(i32 (%struct.TYPE_21__*)* @hashed_formatted_nodes, %struct.super_block* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %53 = call i32 @hash_formatted_node(%struct.TYPE_21__* %52)
  br label %184

54:                                               ; preds = %47, %42
  %55 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %56 = call i32 @get_left_neighbor(%struct.TYPE_21__* %55)
  store i32 %56, i32* %6, align 4
  %57 = load %struct.super_block*, %struct.super_block** %5, align 8
  %58 = call i64 @TEST_OPTION(i32 (%struct.TYPE_21__*)* @old_way, %struct.super_block* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %107

60:                                               ; preds = %54
  %61 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %106, label %65

65:                                               ; preds = %60
  %66 = load %struct.super_block*, %struct.super_block** %5, align 8
  %67 = call i32 @reiserfs_hashed_relocation(%struct.super_block* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %65
  %70 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %71 = call i32 @old_way(%struct.TYPE_21__* %70)
  br label %80

72:                                               ; preds = %65
  %73 = load %struct.super_block*, %struct.super_block** %5, align 8
  %74 = call i32 @reiserfs_no_unhashed_relocation(%struct.super_block* %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %72
  %77 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %78 = call i32 @old_hashed_relocation(%struct.TYPE_21__* %77)
  br label %79

79:                                               ; preds = %76, %72
  br label %80

80:                                               ; preds = %79, %69
  %81 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %105

85:                                               ; preds = %80
  %86 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = call %struct.TYPE_19__* @REISERFS_I(i64 %91)
  %93 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp slt i64 %88, %94
  br i1 %95, label %96, label %105

96:                                               ; preds = %85
  %97 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = call %struct.TYPE_19__* @REISERFS_I(i64 %99)
  %101 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %103, i32 0, i32 0
  store i64 %102, i64* %104, align 8
  br label %105

105:                                              ; preds = %96, %85, %80
  br label %106

106:                                              ; preds = %105, %60
  br label %184

107:                                              ; preds = %54
  %108 = load %struct.super_block*, %struct.super_block** %5, align 8
  %109 = call i64 @TEST_OPTION(i32 (%struct.TYPE_21__*)* @hundredth_slices, %struct.super_block* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %123

111:                                              ; preds = %107
  %112 = load %struct.super_block*, %struct.super_block** %5, align 8
  %113 = call i64 @displacing_large_files(%struct.super_block* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %111
  %116 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %115, %111
  %121 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %122 = call i32 @hundredth_slices(%struct.TYPE_21__* %121)
  br label %184

123:                                              ; preds = %115, %107
  %124 = load i32, i32* %6, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %138, label %126

126:                                              ; preds = %123
  %127 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %138, label %131

131:                                              ; preds = %126
  %132 = load %struct.super_block*, %struct.super_block** %5, align 8
  %133 = call i64 @TEST_OPTION(i32 (%struct.TYPE_21__*)* @old_hashed_relocation, %struct.super_block* %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %131
  %136 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %137 = call i32 @old_hashed_relocation(%struct.TYPE_21__* %136)
  br label %138

138:                                              ; preds = %135, %131, %126, %123
  %139 = load i32, i32* %6, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %146

141:                                              ; preds = %138
  %142 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %153

146:                                              ; preds = %141, %138
  %147 = load %struct.super_block*, %struct.super_block** %5, align 8
  %148 = call i64 @TEST_OPTION(i32 (%struct.TYPE_21__*)* @new_hashed_relocation, %struct.super_block* %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %146
  %151 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %152 = call i32 @new_hashed_relocation(%struct.TYPE_21__* %151)
  br label %153

153:                                              ; preds = %150, %146, %141
  %154 = load i32, i32* %6, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %168, label %156

156:                                              ; preds = %153
  %157 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %158 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %168, label %161

161:                                              ; preds = %156
  %162 = load %struct.super_block*, %struct.super_block** %5, align 8
  %163 = call i64 @TEST_OPTION(i32 (%struct.TYPE_21__*)* @dirid_groups, %struct.super_block* %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %168

165:                                              ; preds = %161
  %166 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %167 = call i32 @dirid_groups(%struct.TYPE_21__* %166)
  br label %168

168:                                              ; preds = %165, %161, %156, %153
  %169 = load i32, i32* %6, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %183, label %171

171:                                              ; preds = %168
  %172 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %173 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %172, i32 0, i32 1
  %174 = load i64, i64* %173, align 8
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %183, label %176

176:                                              ; preds = %171
  %177 = load %struct.super_block*, %struct.super_block** %5, align 8
  %178 = call i64 @TEST_OPTION(i32 (%struct.TYPE_21__*)* @oid_groups, %struct.super_block* %177)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %183

180:                                              ; preds = %176
  %181 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %182 = call i32 @oid_groups(%struct.TYPE_21__* %181)
  br label %183

183:                                              ; preds = %180, %176, %171, %168
  br label %184

184:                                              ; preds = %183, %120, %106, %51, %39
  ret void
}

declare dso_local i64 @SB_BLOCK_COUNT(%struct.super_block*) #1

declare dso_local i64 @concentrating_formatted_nodes(%struct.super_block*) #1

declare dso_local i32 @set_border_in_hint(%struct.super_block*, %struct.TYPE_21__*) #1

declare dso_local i64 @displacing_large_files(%struct.super_block*) #1

declare dso_local i64 @this_blocknr_allocation_would_make_it_a_large_file(%struct.TYPE_21__*) #1

declare dso_local i32 @displace_large_file(%struct.TYPE_21__*) #1

declare dso_local i64 @TEST_OPTION(i32 (%struct.TYPE_21__*)*, %struct.super_block*) #1

declare dso_local i32 @hashed_formatted_nodes(%struct.TYPE_21__*) #1

declare dso_local i32 @hash_formatted_node(%struct.TYPE_21__*) #1

declare dso_local i32 @get_left_neighbor(%struct.TYPE_21__*) #1

declare dso_local i32 @old_way(%struct.TYPE_21__*) #1

declare dso_local i32 @reiserfs_hashed_relocation(%struct.super_block*) #1

declare dso_local i32 @reiserfs_no_unhashed_relocation(%struct.super_block*) #1

declare dso_local i32 @old_hashed_relocation(%struct.TYPE_21__*) #1

declare dso_local %struct.TYPE_19__* @REISERFS_I(i64) #1

declare dso_local i32 @hundredth_slices(%struct.TYPE_21__*) #1

declare dso_local i32 @new_hashed_relocation(%struct.TYPE_21__*) #1

declare dso_local i32 @dirid_groups(%struct.TYPE_21__*) #1

declare dso_local i32 @oid_groups(%struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
