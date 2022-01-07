; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_fix_node.c_check_right.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_fix_node.c_check_right.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tree_balance = type { i32*, i32, i32, %struct.virtual_node* }
%struct.virtual_node = type { i32, i32, i64, %struct.virtual_item* }
%struct.virtual_item = type { i32, i64 }

@.str = private unnamed_addr constant [22 x i8] c"vs-8070: cur_free < 0\00", align 1
@DC_SIZE = common dso_local global i32 0, align 4
@KEY_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"vs-8075: parent does not exist or invalid\00", align 1
@VI_TYPE_RIGHT_MERGEABLE = common dso_local global i32 0, align 4
@IH_SIZE = common dso_local global i32 0, align 4
@M_INSERT = common dso_local global i64 0, align 8
@M_PASTE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [50 x i8] c"vs-8080: invalid mode or balance condition failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tree_balance*, i32, i32)* @check_right to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_right(%struct.tree_balance* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.tree_balance*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.virtual_node*, align 8
  %9 = alloca %struct.virtual_item*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.tree_balance* %0, %struct.tree_balance** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %13 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %12, i32 0, i32 3
  %14 = load %struct.virtual_node*, %struct.virtual_node** %13, align 8
  store %struct.virtual_node* %14, %struct.virtual_node** %8, align 8
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i32 @RFALSE(i32 %17, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* %5, align 4
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %33

21:                                               ; preds = %3
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @DC_SIZE, align 4
  %24 = load i32, i32* @KEY_SIZE, align 4
  %25 = add nsw i32 %23, %24
  %26 = sdiv i32 %22, %25
  %27 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %28 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  store i32 %26, i32* %32, align 4
  br label %191

33:                                               ; preds = %3
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %33
  %37 = load %struct.virtual_node*, %struct.virtual_node** %8, align 8
  %38 = getelementptr inbounds %struct.virtual_node, %struct.virtual_node* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %50, label %41

41:                                               ; preds = %36, %33
  %42 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %43 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  store i32 0, i32* %47, align 4
  %48 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %49 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %48, i32 0, i32 1
  store i32 -1, i32* %49, align 8
  br label %191

50:                                               ; preds = %36
  %51 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %52 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @PATH_H_PPARENT(i32 %53, i32 0)
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  %58 = call i32 @RFALSE(i32 %57, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %59 = load %struct.virtual_node*, %struct.virtual_node** %8, align 8
  %60 = getelementptr inbounds %struct.virtual_node, %struct.virtual_node* %59, i32 0, i32 3
  %61 = load %struct.virtual_item*, %struct.virtual_item** %60, align 8
  %62 = load %struct.virtual_node*, %struct.virtual_node** %8, align 8
  %63 = getelementptr inbounds %struct.virtual_node, %struct.virtual_node* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.virtual_item, %struct.virtual_item* %61, i64 %65
  %67 = getelementptr inbounds %struct.virtual_item, %struct.virtual_item* %66, i64 -1
  store %struct.virtual_item* %67, %struct.virtual_item** %9, align 8
  %68 = load i32, i32* %6, align 4
  %69 = load %struct.virtual_node*, %struct.virtual_node** %8, align 8
  %70 = getelementptr inbounds %struct.virtual_node, %struct.virtual_node* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.virtual_item*, %struct.virtual_item** %9, align 8
  %73 = getelementptr inbounds %struct.virtual_item, %struct.virtual_item* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @VI_TYPE_RIGHT_MERGEABLE, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %50
  %79 = load i32, i32* @IH_SIZE, align 4
  br label %81

80:                                               ; preds = %50
  br label %81

81:                                               ; preds = %80, %78
  %82 = phi i32 [ %79, %78 ], [ 0, %80 ]
  %83 = sub i32 %71, %82
  %84 = icmp uge i32 %68, %83
  br i1 %84, label %85, label %112

85:                                               ; preds = %81
  %86 = load %struct.virtual_node*, %struct.virtual_node** %8, align 8
  %87 = getelementptr inbounds %struct.virtual_node, %struct.virtual_node* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @M_INSERT, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %97, label %91

91:                                               ; preds = %85
  %92 = load %struct.virtual_node*, %struct.virtual_node** %8, align 8
  %93 = getelementptr inbounds %struct.virtual_node, %struct.virtual_node* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @M_PASTE, align 8
  %96 = icmp eq i64 %94, %95
  br label %97

97:                                               ; preds = %91, %85
  %98 = phi i1 [ true, %85 ], [ %96, %91 ]
  %99 = zext i1 %98 to i32
  %100 = call i32 @RFALSE(i32 %99, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0))
  %101 = load %struct.virtual_node*, %struct.virtual_node** %8, align 8
  %102 = getelementptr inbounds %struct.virtual_node, %struct.virtual_node* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %105 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* %5, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  store i32 %103, i32* %109, align 4
  %110 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %111 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %110, i32 0, i32 1
  store i32 -1, i32* %111, align 8
  br label %191

112:                                              ; preds = %81
  store i32 0, i32* %10, align 4
  %113 = load i32, i32* @IH_SIZE, align 4
  store i32 %113, i32* %11, align 4
  %114 = load %struct.virtual_item*, %struct.virtual_item** %9, align 8
  %115 = getelementptr inbounds %struct.virtual_item, %struct.virtual_item* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @VI_TYPE_RIGHT_MERGEABLE, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %112
  %121 = load i32, i32* @IH_SIZE, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %123

123:                                              ; preds = %120, %112
  %124 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %125 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %124, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 0
  store i32 0, i32* %127, align 4
  %128 = load %struct.virtual_node*, %struct.virtual_node** %8, align 8
  %129 = getelementptr inbounds %struct.virtual_node, %struct.virtual_node* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = sub nsw i32 %130, 1
  store i32 %131, i32* %7, align 4
  br label %132

132:                                              ; preds = %184, %123
  %133 = load i32, i32* %7, align 4
  %134 = icmp sge i32 %133, 0
  br i1 %134, label %135, label %190

135:                                              ; preds = %132
  %136 = load %struct.virtual_item*, %struct.virtual_item** %9, align 8
  %137 = getelementptr inbounds %struct.virtual_item, %struct.virtual_item* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = load i32, i32* %10, align 4
  %140 = sext i32 %139 to i64
  %141 = add nsw i64 %140, %138
  %142 = trunc i64 %141 to i32
  store i32 %142, i32* %10, align 4
  %143 = load i32, i32* %6, align 4
  %144 = load i32, i32* %10, align 4
  %145 = icmp sge i32 %143, %144
  br i1 %145, label %146, label %156

146:                                              ; preds = %135
  %147 = load i32, i32* %10, align 4
  %148 = load i32, i32* %6, align 4
  %149 = sub nsw i32 %148, %147
  store i32 %149, i32* %6, align 4
  %150 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %151 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %150, i32 0, i32 0
  %152 = load i32*, i32** %151, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 0
  %154 = load i32, i32* %153, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %153, align 4
  br label %184

156:                                              ; preds = %135
  %157 = load i32, i32* %6, align 4
  %158 = load i32, i32* %11, align 4
  %159 = icmp sle i32 %157, %158
  br i1 %159, label %160, label %163

160:                                              ; preds = %156
  %161 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %162 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %161, i32 0, i32 1
  store i32 -1, i32* %162, align 8
  br label %191

163:                                              ; preds = %156
  %164 = load i32, i32* %11, align 4
  %165 = load i32, i32* %6, align 4
  %166 = sub nsw i32 %165, %164
  store i32 %166, i32* %6, align 4
  %167 = load %struct.virtual_item*, %struct.virtual_item** %9, align 8
  %168 = load i32, i32* %6, align 4
  %169 = call i32 @op_check_right(%struct.virtual_item* %167, i32 %168)
  %170 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %171 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %170, i32 0, i32 1
  store i32 %169, i32* %171, align 8
  %172 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %173 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 8
  %175 = icmp ne i32 %174, -1
  br i1 %175, label %176, label %183

176:                                              ; preds = %163
  %177 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %178 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %177, i32 0, i32 0
  %179 = load i32*, i32** %178, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 0
  %181 = load i32, i32* %180, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %180, align 4
  br label %183

183:                                              ; preds = %176, %163
  br label %190

184:                                              ; preds = %146
  %185 = load i32, i32* %7, align 4
  %186 = add nsw i32 %185, -1
  store i32 %186, i32* %7, align 4
  store i32 0, i32* %10, align 4
  %187 = load i32, i32* @IH_SIZE, align 4
  store i32 %187, i32* %11, align 4
  %188 = load %struct.virtual_item*, %struct.virtual_item** %9, align 8
  %189 = getelementptr inbounds %struct.virtual_item, %struct.virtual_item* %188, i32 -1
  store %struct.virtual_item* %189, %struct.virtual_item** %9, align 8
  br label %132

190:                                              ; preds = %183, %132
  br label %191

191:                                              ; preds = %190, %160, %97, %41, %21
  ret void
}

declare dso_local i32 @RFALSE(i32, i8*) #1

declare dso_local i32 @PATH_H_PPARENT(i32, i32) #1

declare dso_local i32 @op_check_right(%struct.virtual_item*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
