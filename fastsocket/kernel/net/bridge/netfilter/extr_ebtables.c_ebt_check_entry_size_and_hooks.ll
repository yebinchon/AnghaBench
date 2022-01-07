; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bridge/netfilter/extr_ebtables.c_ebt_check_entry_size_and_hooks.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bridge/netfilter/extr_ebtables.c_ebt_check_entry_size_and_hooks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ebt_entry = type { i32, i32, i32, i32 }
%struct.ebt_table_info = type { i64* }
%struct.ebt_entries = type { i64, i32, i32 }

@NF_BR_NUMHOOKS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"nentries does not equal the nr of entries in the chain\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@EBT_DROP = common dso_local global i64 0, align 8
@EBT_ACCEPT = common dso_local global i64 0, align 8
@EBT_RETURN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"bad policy\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"counter_offset != totalcnt\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"entry offsets not in right order\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"target size too small\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ebt_entry*, %struct.ebt_table_info*, i32*, i32*, i32*, i32*)* @ebt_check_entry_size_and_hooks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ebt_check_entry_size_and_hooks(%struct.ebt_entry* %0, %struct.ebt_table_info* %1, i32* %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ebt_entry*, align 8
  %9 = alloca %struct.ebt_table_info*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.ebt_entry* %0, %struct.ebt_entry** %8, align 8
  store %struct.ebt_table_info* %1, %struct.ebt_table_info** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32 0, i32* %14, align 4
  br label %15

15:                                               ; preds = %33, %6
  %16 = load i32, i32* %14, align 4
  %17 = load i32, i32* @NF_BR_NUMHOOKS, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %36

19:                                               ; preds = %15
  %20 = load %struct.ebt_entry*, %struct.ebt_entry** %8, align 8
  %21 = bitcast %struct.ebt_entry* %20 to i8*
  %22 = load %struct.ebt_table_info*, %struct.ebt_table_info** %9, align 8
  %23 = getelementptr inbounds %struct.ebt_table_info, %struct.ebt_table_info* %22, i32 0, i32 0
  %24 = load i64*, i64** %23, align 8
  %25 = load i32, i32* %14, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i64, i64* %24, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to i8*
  %30 = icmp eq i8* %21, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %19
  br label %36

32:                                               ; preds = %19
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %14, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %14, align 4
  br label %15

36:                                               ; preds = %31, %15
  %37 = load i32, i32* %14, align 4
  %38 = load i32, i32* @NF_BR_NUMHOOKS, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %45, label %40

40:                                               ; preds = %36
  %41 = load %struct.ebt_entry*, %struct.ebt_entry** %8, align 8
  %42 = getelementptr inbounds %struct.ebt_entry, %struct.ebt_entry* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %112, label %45

45:                                               ; preds = %40, %36
  %46 = load i32*, i32** %10, align 8
  %47 = load i32, i32* %46, align 4
  %48 = load i32*, i32** %11, align 8
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %47, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %45
  %52 = call i32 @BUGPRINT(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %7, align 4
  br label %159

55:                                               ; preds = %45
  %56 = load %struct.ebt_entry*, %struct.ebt_entry** %8, align 8
  %57 = bitcast %struct.ebt_entry* %56 to %struct.ebt_entries*
  %58 = getelementptr inbounds %struct.ebt_entries, %struct.ebt_entries* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @EBT_DROP, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %85

62:                                               ; preds = %55
  %63 = load %struct.ebt_entry*, %struct.ebt_entry** %8, align 8
  %64 = bitcast %struct.ebt_entry* %63 to %struct.ebt_entries*
  %65 = getelementptr inbounds %struct.ebt_entries, %struct.ebt_entries* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @EBT_ACCEPT, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %85

69:                                               ; preds = %62
  %70 = load i32, i32* %14, align 4
  %71 = load i32, i32* @NF_BR_NUMHOOKS, align 4
  %72 = icmp ne i32 %70, %71
  br i1 %72, label %80, label %73

73:                                               ; preds = %69
  %74 = load %struct.ebt_entry*, %struct.ebt_entry** %8, align 8
  %75 = bitcast %struct.ebt_entry* %74 to %struct.ebt_entries*
  %76 = getelementptr inbounds %struct.ebt_entries, %struct.ebt_entries* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @EBT_RETURN, align 8
  %79 = icmp ne i64 %77, %78
  br i1 %79, label %80, label %84

80:                                               ; preds = %73, %69
  %81 = call i32 @BUGPRINT(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %7, align 4
  br label %159

84:                                               ; preds = %73
  br label %85

85:                                               ; preds = %84, %62, %55
  %86 = load i32, i32* %14, align 4
  %87 = load i32, i32* @NF_BR_NUMHOOKS, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %93

89:                                               ; preds = %85
  %90 = load i32*, i32** %13, align 8
  %91 = load i32, i32* %90, align 4
  %92 = add i32 %91, 1
  store i32 %92, i32* %90, align 4
  br label %93

93:                                               ; preds = %89, %85
  %94 = load %struct.ebt_entry*, %struct.ebt_entry** %8, align 8
  %95 = bitcast %struct.ebt_entry* %94 to %struct.ebt_entries*
  %96 = getelementptr inbounds %struct.ebt_entries, %struct.ebt_entries* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = load i32*, i32** %12, align 8
  %99 = load i32, i32* %98, align 4
  %100 = icmp ne i32 %97, %99
  br i1 %100, label %101, label %105

101:                                              ; preds = %93
  %102 = call i32 @BUGPRINT(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %103 = load i32, i32* @EINVAL, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %7, align 4
  br label %159

105:                                              ; preds = %93
  %106 = load %struct.ebt_entry*, %struct.ebt_entry** %8, align 8
  %107 = bitcast %struct.ebt_entry* %106 to %struct.ebt_entries*
  %108 = getelementptr inbounds %struct.ebt_entries, %struct.ebt_entries* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = load i32*, i32** %10, align 8
  store i32 %109, i32* %110, align 4
  %111 = load i32*, i32** %11, align 8
  store i32 0, i32* %111, align 4
  store i32 0, i32* %7, align 4
  br label %159

112:                                              ; preds = %40
  %113 = load %struct.ebt_entry*, %struct.ebt_entry** %8, align 8
  %114 = getelementptr inbounds %struct.ebt_entry, %struct.ebt_entry* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = sext i32 %115 to i64
  %117 = icmp ugt i64 16, %116
  br i1 %117, label %134, label %118

118:                                              ; preds = %112
  %119 = load %struct.ebt_entry*, %struct.ebt_entry** %8, align 8
  %120 = getelementptr inbounds %struct.ebt_entry, %struct.ebt_entry* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.ebt_entry*, %struct.ebt_entry** %8, align 8
  %123 = getelementptr inbounds %struct.ebt_entry, %struct.ebt_entry* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = icmp sgt i32 %121, %124
  br i1 %125, label %134, label %126

126:                                              ; preds = %118
  %127 = load %struct.ebt_entry*, %struct.ebt_entry** %8, align 8
  %128 = getelementptr inbounds %struct.ebt_entry, %struct.ebt_entry* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.ebt_entry*, %struct.ebt_entry** %8, align 8
  %131 = getelementptr inbounds %struct.ebt_entry, %struct.ebt_entry* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = icmp sge i32 %129, %132
  br i1 %133, label %134, label %138

134:                                              ; preds = %126, %118, %112
  %135 = call i32 @BUGPRINT(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %136 = load i32, i32* @EINVAL, align 4
  %137 = sub nsw i32 0, %136
  store i32 %137, i32* %7, align 4
  br label %159

138:                                              ; preds = %126
  %139 = load %struct.ebt_entry*, %struct.ebt_entry** %8, align 8
  %140 = getelementptr inbounds %struct.ebt_entry, %struct.ebt_entry* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.ebt_entry*, %struct.ebt_entry** %8, align 8
  %143 = getelementptr inbounds %struct.ebt_entry, %struct.ebt_entry* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = sub nsw i32 %141, %144
  %146 = sext i32 %145 to i64
  %147 = icmp ult i64 %146, 4
  br i1 %147, label %148, label %152

148:                                              ; preds = %138
  %149 = call i32 @BUGPRINT(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %150 = load i32, i32* @EINVAL, align 4
  %151 = sub nsw i32 0, %150
  store i32 %151, i32* %7, align 4
  br label %159

152:                                              ; preds = %138
  %153 = load i32*, i32** %11, align 8
  %154 = load i32, i32* %153, align 4
  %155 = add i32 %154, 1
  store i32 %155, i32* %153, align 4
  %156 = load i32*, i32** %12, align 8
  %157 = load i32, i32* %156, align 4
  %158 = add i32 %157, 1
  store i32 %158, i32* %156, align 4
  store i32 0, i32* %7, align 4
  br label %159

159:                                              ; preds = %152, %148, %134, %105, %101, %80, %51
  %160 = load i32, i32* %7, align 4
  ret i32 %160
}

declare dso_local i32 @BUGPRINT(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
