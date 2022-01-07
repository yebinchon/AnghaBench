; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_lpt.c_ubifs_lpt_lookup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_lpt.c_ubifs_lpt_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_lprops = type { i32, i32, i32 }
%struct.ubifs_info = type { i32, i32, %struct.ubifs_pnode* }
%struct.ubifs_pnode = type { %struct.ubifs_lprops* }
%struct.ubifs_nnode = type { %struct.ubifs_lprops* }

@UBIFS_LPT_FANOUT_SHIFT = common dso_local global i32 0, align 4
@UBIFS_LPT_FANOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"LEB %d, free %d, dirty %d, flags %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ubifs_lprops* @ubifs_lpt_lookup(%struct.ubifs_info* %0, i32 %1) #0 {
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
  br label %135

25:                                               ; preds = %17
  br label %26

26:                                               ; preds = %25, %2
  %27 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %28 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %27, i32 0, i32 2
  %29 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %28, align 8
  %30 = bitcast %struct.ubifs_pnode* %29 to %struct.ubifs_nnode*
  store %struct.ubifs_nnode* %30, %struct.ubifs_nnode** %11, align 8
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %33 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = sub nsw i32 %31, %34
  store i32 %35, i32* %7, align 4
  %36 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %37 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @UBIFS_LPT_FANOUT_SHIFT, align 4
  %40 = mul nsw i32 %38, %39
  store i32 %40, i32* %10, align 4
  store i32 1, i32* %8, align 4
  br label %41

41:                                               ; preds = %73, %26
  %42 = load i32, i32* %8, align 4
  %43 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %44 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp slt i32 %42, %45
  br i1 %46, label %47, label %76

47:                                               ; preds = %41
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* %10, align 4
  %50 = ashr i32 %48, %49
  %51 = load i32, i32* @UBIFS_LPT_FANOUT, align 4
  %52 = sub nsw i32 %51, 1
  %53 = and i32 %50, %52
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* @UBIFS_LPT_FANOUT_SHIFT, align 4
  %55 = load i32, i32* %10, align 4
  %56 = sub nsw i32 %55, %54
  store i32 %56, i32* %10, align 4
  %57 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %58 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %11, align 8
  %59 = bitcast %struct.ubifs_nnode* %58 to %struct.ubifs_pnode*
  %60 = load i32, i32* %9, align 4
  %61 = call %struct.ubifs_pnode* @ubifs_get_nnode(%struct.ubifs_info* %57, %struct.ubifs_pnode* %59, i32 %60)
  %62 = bitcast %struct.ubifs_pnode* %61 to %struct.ubifs_nnode*
  store %struct.ubifs_nnode* %62, %struct.ubifs_nnode** %11, align 8
  %63 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %11, align 8
  %64 = bitcast %struct.ubifs_nnode* %63 to %struct.ubifs_pnode*
  %65 = call i64 @IS_ERR(%struct.ubifs_pnode* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %47
  %68 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %11, align 8
  %69 = bitcast %struct.ubifs_nnode* %68 to %struct.ubifs_pnode*
  %70 = call i32 @PTR_ERR(%struct.ubifs_pnode* %69)
  %71 = call %struct.ubifs_lprops* @ERR_PTR(i32 %70)
  store %struct.ubifs_lprops* %71, %struct.ubifs_lprops** %3, align 8
  br label %135

72:                                               ; preds = %47
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %8, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %8, align 4
  br label %41

76:                                               ; preds = %41
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* %10, align 4
  %79 = ashr i32 %77, %78
  %80 = load i32, i32* @UBIFS_LPT_FANOUT, align 4
  %81 = sub nsw i32 %80, 1
  %82 = and i32 %79, %81
  store i32 %82, i32* %9, align 4
  %83 = load i32, i32* @UBIFS_LPT_FANOUT_SHIFT, align 4
  %84 = load i32, i32* %10, align 4
  %85 = sub nsw i32 %84, %83
  store i32 %85, i32* %10, align 4
  %86 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %87 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %11, align 8
  %88 = bitcast %struct.ubifs_nnode* %87 to %struct.ubifs_pnode*
  %89 = load i32, i32* %9, align 4
  %90 = call %struct.ubifs_pnode* @ubifs_get_pnode(%struct.ubifs_info* %86, %struct.ubifs_pnode* %88, i32 %89)
  store %struct.ubifs_pnode* %90, %struct.ubifs_pnode** %12, align 8
  %91 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %12, align 8
  %92 = call i64 @IS_ERR(%struct.ubifs_pnode* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %76
  %95 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %12, align 8
  %96 = call i32 @PTR_ERR(%struct.ubifs_pnode* %95)
  %97 = call %struct.ubifs_lprops* @ERR_PTR(i32 %96)
  store %struct.ubifs_lprops* %97, %struct.ubifs_lprops** %3, align 8
  br label %135

98:                                               ; preds = %76
  %99 = load i32, i32* %7, align 4
  %100 = load i32, i32* @UBIFS_LPT_FANOUT, align 4
  %101 = sub nsw i32 %100, 1
  %102 = and i32 %99, %101
  store i32 %102, i32* %9, align 4
  %103 = load i32, i32* %5, align 4
  %104 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %12, align 8
  %105 = getelementptr inbounds %struct.ubifs_pnode, %struct.ubifs_pnode* %104, i32 0, i32 0
  %106 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %105, align 8
  %107 = load i32, i32* %9, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %106, i64 %108
  %110 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %12, align 8
  %113 = getelementptr inbounds %struct.ubifs_pnode, %struct.ubifs_pnode* %112, i32 0, i32 0
  %114 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %113, align 8
  %115 = load i32, i32* %9, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %114, i64 %116
  %118 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %12, align 8
  %121 = getelementptr inbounds %struct.ubifs_pnode, %struct.ubifs_pnode* %120, i32 0, i32 0
  %122 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %121, align 8
  %123 = load i32, i32* %9, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %122, i64 %124
  %126 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @dbg_lp(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %103, i32 %111, i32 %119, i32 %127)
  %129 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %12, align 8
  %130 = getelementptr inbounds %struct.ubifs_pnode, %struct.ubifs_pnode* %129, i32 0, i32 0
  %131 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %130, align 8
  %132 = load i32, i32* %9, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %131, i64 %133
  store %struct.ubifs_lprops* %134, %struct.ubifs_lprops** %3, align 8
  br label %135

135:                                              ; preds = %98, %94, %67, %22
  %136 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %3, align 8
  ret %struct.ubifs_lprops* %136
}

declare dso_local i32 @ubifs_read_nnode(%struct.ubifs_info*, i32*, i32) #1

declare dso_local %struct.ubifs_lprops* @ERR_PTR(i32) #1

declare dso_local %struct.ubifs_pnode* @ubifs_get_nnode(%struct.ubifs_info*, %struct.ubifs_pnode*, i32) #1

declare dso_local i64 @IS_ERR(%struct.ubifs_pnode*) #1

declare dso_local i32 @PTR_ERR(%struct.ubifs_pnode*) #1

declare dso_local %struct.ubifs_pnode* @ubifs_get_pnode(%struct.ubifs_info*, %struct.ubifs_pnode*, i32) #1

declare dso_local i32 @dbg_lp(i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
