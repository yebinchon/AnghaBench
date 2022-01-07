; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_lpt.c_ubifs_lpt_lookup_dirty.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_lpt.c_ubifs_lpt_lookup_dirty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_lprops = type { i32, i32, i32 }
%struct.ubifs_info = type { i32, i32, %struct.ubifs_pnode* }
%struct.ubifs_pnode = type { %struct.ubifs_lprops*, i32 }
%struct.ubifs_nnode = type { %struct.ubifs_lprops*, i32 }

@UBIFS_LPT_FANOUT_SHIFT = common dso_local global i32 0, align 4
@UBIFS_LPT_FANOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"LEB %d, free %d, dirty %d, flags %d\00", align 1
@DIRTY_CNODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ubifs_lprops* @ubifs_lpt_lookup_dirty(%struct.ubifs_info* %0, i32 %1) #0 {
  %3 = alloca %struct.ubifs_lprops*, align 8
  %4 = alloca %struct.ubifs_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ubifs_nnode*, align 8
  %12 = alloca %struct.ubifs_pnode*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %14 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %13, i32 0, i32 2
  %15 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %14, align 8
  %16 = icmp ne %struct.ubifs_pnode* %15, null
  br i1 %16, label %26, label %17

17:                                               ; preds = %2
  %18 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %19 = call i32 @ubifs_read_nnode(%struct.ubifs_info* %18, i32* null, i32 0)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i32, i32* %6, align 4
  %24 = call %struct.ubifs_lprops* @ERR_PTR(i32 %23)
  store %struct.ubifs_lprops* %24, %struct.ubifs_lprops** %3, align 8
  br label %181

25:                                               ; preds = %17
  br label %26

26:                                               ; preds = %25, %2
  %27 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %28 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %27, i32 0, i32 2
  %29 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %28, align 8
  %30 = bitcast %struct.ubifs_pnode* %29 to %struct.ubifs_nnode*
  store %struct.ubifs_nnode* %30, %struct.ubifs_nnode** %11, align 8
  %31 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %32 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %11, align 8
  %33 = bitcast %struct.ubifs_nnode* %32 to %struct.ubifs_pnode*
  %34 = call %struct.ubifs_pnode* @dirty_cow_nnode(%struct.ubifs_info* %31, %struct.ubifs_pnode* %33)
  %35 = bitcast %struct.ubifs_pnode* %34 to %struct.ubifs_nnode*
  store %struct.ubifs_nnode* %35, %struct.ubifs_nnode** %11, align 8
  %36 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %11, align 8
  %37 = bitcast %struct.ubifs_nnode* %36 to %struct.ubifs_pnode*
  %38 = call i64 @IS_ERR(%struct.ubifs_pnode* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %26
  %41 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %11, align 8
  %42 = bitcast %struct.ubifs_nnode* %41 to %struct.ubifs_pnode*
  %43 = call i32 @PTR_ERR(%struct.ubifs_pnode* %42)
  %44 = call %struct.ubifs_lprops* @ERR_PTR(i32 %43)
  store %struct.ubifs_lprops* %44, %struct.ubifs_lprops** %3, align 8
  br label %181

45:                                               ; preds = %26
  %46 = load i32, i32* %5, align 4
  %47 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %48 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = sub nsw i32 %46, %49
  store i32 %50, i32* %7, align 4
  %51 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %52 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @UBIFS_LPT_FANOUT_SHIFT, align 4
  %55 = mul nsw i32 %53, %54
  store i32 %55, i32* %10, align 4
  store i32 1, i32* %8, align 4
  br label %56

56:                                               ; preds = %103, %45
  %57 = load i32, i32* %8, align 4
  %58 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %59 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = icmp slt i32 %57, %60
  br i1 %61, label %62, label %106

62:                                               ; preds = %56
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* %10, align 4
  %65 = ashr i32 %63, %64
  %66 = load i32, i32* @UBIFS_LPT_FANOUT, align 4
  %67 = sub nsw i32 %66, 1
  %68 = and i32 %65, %67
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* @UBIFS_LPT_FANOUT_SHIFT, align 4
  %70 = load i32, i32* %10, align 4
  %71 = sub nsw i32 %70, %69
  store i32 %71, i32* %10, align 4
  %72 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %73 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %11, align 8
  %74 = bitcast %struct.ubifs_nnode* %73 to %struct.ubifs_pnode*
  %75 = load i32, i32* %9, align 4
  %76 = call %struct.ubifs_pnode* @ubifs_get_nnode(%struct.ubifs_info* %72, %struct.ubifs_pnode* %74, i32 %75)
  %77 = bitcast %struct.ubifs_pnode* %76 to %struct.ubifs_nnode*
  store %struct.ubifs_nnode* %77, %struct.ubifs_nnode** %11, align 8
  %78 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %11, align 8
  %79 = bitcast %struct.ubifs_nnode* %78 to %struct.ubifs_pnode*
  %80 = call i64 @IS_ERR(%struct.ubifs_pnode* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %62
  %83 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %11, align 8
  %84 = bitcast %struct.ubifs_nnode* %83 to %struct.ubifs_pnode*
  %85 = call i32 @PTR_ERR(%struct.ubifs_pnode* %84)
  %86 = call %struct.ubifs_lprops* @ERR_PTR(i32 %85)
  store %struct.ubifs_lprops* %86, %struct.ubifs_lprops** %3, align 8
  br label %181

87:                                               ; preds = %62
  %88 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %89 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %11, align 8
  %90 = bitcast %struct.ubifs_nnode* %89 to %struct.ubifs_pnode*
  %91 = call %struct.ubifs_pnode* @dirty_cow_nnode(%struct.ubifs_info* %88, %struct.ubifs_pnode* %90)
  %92 = bitcast %struct.ubifs_pnode* %91 to %struct.ubifs_nnode*
  store %struct.ubifs_nnode* %92, %struct.ubifs_nnode** %11, align 8
  %93 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %11, align 8
  %94 = bitcast %struct.ubifs_nnode* %93 to %struct.ubifs_pnode*
  %95 = call i64 @IS_ERR(%struct.ubifs_pnode* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %87
  %98 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %11, align 8
  %99 = bitcast %struct.ubifs_nnode* %98 to %struct.ubifs_pnode*
  %100 = call i32 @PTR_ERR(%struct.ubifs_pnode* %99)
  %101 = call %struct.ubifs_lprops* @ERR_PTR(i32 %100)
  store %struct.ubifs_lprops* %101, %struct.ubifs_lprops** %3, align 8
  br label %181

102:                                              ; preds = %87
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %8, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %8, align 4
  br label %56

106:                                              ; preds = %56
  %107 = load i32, i32* %7, align 4
  %108 = load i32, i32* %10, align 4
  %109 = ashr i32 %107, %108
  %110 = load i32, i32* @UBIFS_LPT_FANOUT, align 4
  %111 = sub nsw i32 %110, 1
  %112 = and i32 %109, %111
  store i32 %112, i32* %9, align 4
  %113 = load i32, i32* @UBIFS_LPT_FANOUT_SHIFT, align 4
  %114 = load i32, i32* %10, align 4
  %115 = sub nsw i32 %114, %113
  store i32 %115, i32* %10, align 4
  %116 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %117 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %11, align 8
  %118 = bitcast %struct.ubifs_nnode* %117 to %struct.ubifs_pnode*
  %119 = load i32, i32* %9, align 4
  %120 = call %struct.ubifs_pnode* @ubifs_get_pnode(%struct.ubifs_info* %116, %struct.ubifs_pnode* %118, i32 %119)
  store %struct.ubifs_pnode* %120, %struct.ubifs_pnode** %12, align 8
  %121 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %12, align 8
  %122 = call i64 @IS_ERR(%struct.ubifs_pnode* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %106
  %125 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %12, align 8
  %126 = call i32 @PTR_ERR(%struct.ubifs_pnode* %125)
  %127 = call %struct.ubifs_lprops* @ERR_PTR(i32 %126)
  store %struct.ubifs_lprops* %127, %struct.ubifs_lprops** %3, align 8
  br label %181

128:                                              ; preds = %106
  %129 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %130 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %12, align 8
  %131 = call %struct.ubifs_pnode* @dirty_cow_pnode(%struct.ubifs_info* %129, %struct.ubifs_pnode* %130)
  store %struct.ubifs_pnode* %131, %struct.ubifs_pnode** %12, align 8
  %132 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %12, align 8
  %133 = call i64 @IS_ERR(%struct.ubifs_pnode* %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %128
  %136 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %12, align 8
  %137 = call i32 @PTR_ERR(%struct.ubifs_pnode* %136)
  %138 = call %struct.ubifs_lprops* @ERR_PTR(i32 %137)
  store %struct.ubifs_lprops* %138, %struct.ubifs_lprops** %3, align 8
  br label %181

139:                                              ; preds = %128
  %140 = load i32, i32* %7, align 4
  %141 = load i32, i32* @UBIFS_LPT_FANOUT, align 4
  %142 = sub nsw i32 %141, 1
  %143 = and i32 %140, %142
  store i32 %143, i32* %9, align 4
  %144 = load i32, i32* %5, align 4
  %145 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %12, align 8
  %146 = getelementptr inbounds %struct.ubifs_pnode, %struct.ubifs_pnode* %145, i32 0, i32 0
  %147 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %146, align 8
  %148 = load i32, i32* %9, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %147, i64 %149
  %151 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %12, align 8
  %154 = getelementptr inbounds %struct.ubifs_pnode, %struct.ubifs_pnode* %153, i32 0, i32 0
  %155 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %154, align 8
  %156 = load i32, i32* %9, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %155, i64 %157
  %159 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %12, align 8
  %162 = getelementptr inbounds %struct.ubifs_pnode, %struct.ubifs_pnode* %161, i32 0, i32 0
  %163 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %162, align 8
  %164 = load i32, i32* %9, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %163, i64 %165
  %167 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @dbg_lp(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %144, i32 %152, i32 %160, i32 %168)
  %170 = load i32, i32* @DIRTY_CNODE, align 4
  %171 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %12, align 8
  %172 = getelementptr inbounds %struct.ubifs_pnode, %struct.ubifs_pnode* %171, i32 0, i32 1
  %173 = call i32 @test_bit(i32 %170, i32* %172)
  %174 = call i32 @ubifs_assert(i32 %173)
  %175 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %12, align 8
  %176 = getelementptr inbounds %struct.ubifs_pnode, %struct.ubifs_pnode* %175, i32 0, i32 0
  %177 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %176, align 8
  %178 = load i32, i32* %9, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %177, i64 %179
  store %struct.ubifs_lprops* %180, %struct.ubifs_lprops** %3, align 8
  br label %181

181:                                              ; preds = %139, %135, %124, %97, %82, %40, %22
  %182 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %3, align 8
  ret %struct.ubifs_lprops* %182
}

declare dso_local i32 @ubifs_read_nnode(%struct.ubifs_info*, i32*, i32) #1

declare dso_local %struct.ubifs_lprops* @ERR_PTR(i32) #1

declare dso_local %struct.ubifs_pnode* @dirty_cow_nnode(%struct.ubifs_info*, %struct.ubifs_pnode*) #1

declare dso_local i64 @IS_ERR(%struct.ubifs_pnode*) #1

declare dso_local i32 @PTR_ERR(%struct.ubifs_pnode*) #1

declare dso_local %struct.ubifs_pnode* @ubifs_get_nnode(%struct.ubifs_info*, %struct.ubifs_pnode*, i32) #1

declare dso_local %struct.ubifs_pnode* @ubifs_get_pnode(%struct.ubifs_info*, %struct.ubifs_pnode*, i32) #1

declare dso_local %struct.ubifs_pnode* @dirty_cow_pnode(%struct.ubifs_info*, %struct.ubifs_pnode*) #1

declare dso_local i32 @dbg_lp(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @ubifs_assert(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
