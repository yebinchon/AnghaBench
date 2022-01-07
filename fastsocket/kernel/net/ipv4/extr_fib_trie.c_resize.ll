; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_fib_trie.c_resize.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_fib_trie.c_resize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.node = type { i32 }
%struct.trie = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.tnode = type { i32, i64, i32, %struct.node** }

@.str = private unnamed_addr constant [54 x i8] c"In tnode_resize %p inflate_threshold=%d threshold=%d\0A\00", align 1
@inflate_threshold = common dso_local global i32 0, align 4
@halve_threshold = common dso_local global i32 0, align 4
@inflate_threshold_root = common dso_local global i32 0, align 4
@halve_threshold_root = common dso_local global i32 0, align 4
@MAX_WORK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.node* (%struct.trie*, %struct.tnode*)* @resize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.node* @resize(%struct.trie* %0, %struct.tnode* %1) #0 {
  %3 = alloca %struct.node*, align 8
  %4 = alloca %struct.trie*, align 8
  %5 = alloca %struct.tnode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.tnode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.node*, align 8
  store %struct.trie* %0, %struct.trie** %4, align 8
  store %struct.tnode* %1, %struct.tnode** %5, align 8
  %12 = load %struct.tnode*, %struct.tnode** %5, align 8
  %13 = icmp ne %struct.tnode* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store %struct.node* null, %struct.node** %3, align 8
  br label %180

15:                                               ; preds = %2
  %16 = load %struct.tnode*, %struct.tnode** %5, align 8
  %17 = load i32, i32* @inflate_threshold, align 4
  %18 = load i32, i32* @halve_threshold, align 4
  %19 = call i32 @pr_debug(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), %struct.tnode* %16, i32 %17, i32 %18)
  %20 = load %struct.tnode*, %struct.tnode** %5, align 8
  %21 = getelementptr inbounds %struct.tnode, %struct.tnode* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.tnode*, %struct.tnode** %5, align 8
  %24 = call i32 @tnode_child_length(%struct.tnode* %23)
  %25 = icmp eq i32 %22, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %15
  %27 = load %struct.tnode*, %struct.tnode** %5, align 8
  %28 = call i32 @tnode_free_safe(%struct.tnode* %27)
  store %struct.node* null, %struct.node** %3, align 8
  br label %180

29:                                               ; preds = %15
  %30 = load %struct.tnode*, %struct.tnode** %5, align 8
  %31 = getelementptr inbounds %struct.tnode, %struct.tnode* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.tnode*, %struct.tnode** %5, align 8
  %34 = call i32 @tnode_child_length(%struct.tnode* %33)
  %35 = sub nsw i32 %34, 1
  %36 = icmp eq i32 %32, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  br label %150

38:                                               ; preds = %29
  %39 = load %struct.tnode*, %struct.tnode** %5, align 8
  %40 = call i32 @check_tnode(%struct.tnode* %39)
  %41 = load %struct.tnode*, %struct.tnode** %5, align 8
  %42 = bitcast %struct.tnode* %41 to %struct.node*
  %43 = call i32 @node_parent(%struct.node* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %38
  %46 = load i32, i32* @inflate_threshold_root, align 4
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* @halve_threshold_root, align 4
  store i32 %47, i32* %9, align 4
  br label %51

48:                                               ; preds = %38
  %49 = load i32, i32* @inflate_threshold, align 4
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* @halve_threshold, align 4
  store i32 %50, i32* %9, align 4
  br label %51

51:                                               ; preds = %48, %45
  %52 = load i32, i32* @MAX_WORK, align 4
  store i32 %52, i32* %10, align 4
  br label %53

53:                                               ; preds = %94, %51
  %54 = load %struct.tnode*, %struct.tnode** %5, align 8
  %55 = getelementptr inbounds %struct.tnode, %struct.tnode* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp sgt i64 %56, 0
  br i1 %57, label %58, label %82

58:                                               ; preds = %53
  %59 = load i32, i32* %10, align 4
  %60 = add nsw i32 %59, -1
  store i32 %60, i32* %10, align 4
  %61 = icmp ne i32 %59, 0
  br i1 %61, label %62, label %82

62:                                               ; preds = %58
  %63 = load %struct.tnode*, %struct.tnode** %5, align 8
  %64 = getelementptr inbounds %struct.tnode, %struct.tnode* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.tnode*, %struct.tnode** %5, align 8
  %67 = call i32 @tnode_child_length(%struct.tnode* %66)
  %68 = sext i32 %67 to i64
  %69 = add nsw i64 %65, %68
  %70 = load %struct.tnode*, %struct.tnode** %5, align 8
  %71 = getelementptr inbounds %struct.tnode, %struct.tnode* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = sext i32 %72 to i64
  %74 = sub nsw i64 %69, %73
  %75 = mul nsw i64 50, %74
  %76 = load i32, i32* %8, align 4
  %77 = load %struct.tnode*, %struct.tnode** %5, align 8
  %78 = call i32 @tnode_child_length(%struct.tnode* %77)
  %79 = mul nsw i32 %76, %78
  %80 = sext i32 %79 to i64
  %81 = icmp sge i64 %75, %80
  br label %82

82:                                               ; preds = %62, %58, %53
  %83 = phi i1 [ false, %58 ], [ false, %53 ], [ %81, %62 ]
  br i1 %83, label %84, label %95

84:                                               ; preds = %82
  %85 = load %struct.tnode*, %struct.tnode** %5, align 8
  store %struct.tnode* %85, %struct.tnode** %7, align 8
  %86 = load %struct.trie*, %struct.trie** %4, align 8
  %87 = load %struct.tnode*, %struct.tnode** %5, align 8
  %88 = call %struct.tnode* @inflate(%struct.trie* %86, %struct.tnode* %87)
  store %struct.tnode* %88, %struct.tnode** %5, align 8
  %89 = load %struct.tnode*, %struct.tnode** %5, align 8
  %90 = call i64 @IS_ERR(%struct.tnode* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %84
  %93 = load %struct.tnode*, %struct.tnode** %7, align 8
  store %struct.tnode* %93, %struct.tnode** %5, align 8
  br label %95

94:                                               ; preds = %84
  br label %53

95:                                               ; preds = %92, %82
  %96 = load %struct.tnode*, %struct.tnode** %5, align 8
  %97 = call i32 @check_tnode(%struct.tnode* %96)
  %98 = load i32, i32* %10, align 4
  %99 = load i32, i32* @MAX_WORK, align 4
  %100 = icmp ne i32 %98, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %95
  %102 = load %struct.tnode*, %struct.tnode** %5, align 8
  %103 = bitcast %struct.tnode* %102 to %struct.node*
  store %struct.node* %103, %struct.node** %3, align 8
  br label %180

104:                                              ; preds = %95
  %105 = load i32, i32* @MAX_WORK, align 4
  store i32 %105, i32* %10, align 4
  br label %106

106:                                              ; preds = %140, %104
  %107 = load %struct.tnode*, %struct.tnode** %5, align 8
  %108 = getelementptr inbounds %struct.tnode, %struct.tnode* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = icmp sgt i32 %109, 1
  br i1 %110, label %111, label %128

111:                                              ; preds = %106
  %112 = load i32, i32* %10, align 4
  %113 = add nsw i32 %112, -1
  store i32 %113, i32* %10, align 4
  %114 = icmp ne i32 %112, 0
  br i1 %114, label %115, label %128

115:                                              ; preds = %111
  %116 = load %struct.tnode*, %struct.tnode** %5, align 8
  %117 = call i32 @tnode_child_length(%struct.tnode* %116)
  %118 = load %struct.tnode*, %struct.tnode** %5, align 8
  %119 = getelementptr inbounds %struct.tnode, %struct.tnode* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = sub nsw i32 %117, %120
  %122 = mul nsw i32 100, %121
  %123 = load i32, i32* %9, align 4
  %124 = load %struct.tnode*, %struct.tnode** %5, align 8
  %125 = call i32 @tnode_child_length(%struct.tnode* %124)
  %126 = mul nsw i32 %123, %125
  %127 = icmp slt i32 %122, %126
  br label %128

128:                                              ; preds = %115, %111, %106
  %129 = phi i1 [ false, %111 ], [ false, %106 ], [ %127, %115 ]
  br i1 %129, label %130, label %141

130:                                              ; preds = %128
  %131 = load %struct.tnode*, %struct.tnode** %5, align 8
  store %struct.tnode* %131, %struct.tnode** %7, align 8
  %132 = load %struct.trie*, %struct.trie** %4, align 8
  %133 = load %struct.tnode*, %struct.tnode** %5, align 8
  %134 = call %struct.tnode* @halve(%struct.trie* %132, %struct.tnode* %133)
  store %struct.tnode* %134, %struct.tnode** %5, align 8
  %135 = load %struct.tnode*, %struct.tnode** %5, align 8
  %136 = call i64 @IS_ERR(%struct.tnode* %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %130
  %139 = load %struct.tnode*, %struct.tnode** %7, align 8
  store %struct.tnode* %139, %struct.tnode** %5, align 8
  br label %141

140:                                              ; preds = %130
  br label %106

141:                                              ; preds = %138, %128
  %142 = load %struct.tnode*, %struct.tnode** %5, align 8
  %143 = getelementptr inbounds %struct.tnode, %struct.tnode* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.tnode*, %struct.tnode** %5, align 8
  %146 = call i32 @tnode_child_length(%struct.tnode* %145)
  %147 = sub nsw i32 %146, 1
  %148 = icmp eq i32 %144, %147
  br i1 %148, label %149, label %177

149:                                              ; preds = %141
  br label %150

150:                                              ; preds = %149, %37
  store i32 0, i32* %6, align 4
  br label %151

151:                                              ; preds = %173, %150
  %152 = load i32, i32* %6, align 4
  %153 = load %struct.tnode*, %struct.tnode** %5, align 8
  %154 = call i32 @tnode_child_length(%struct.tnode* %153)
  %155 = icmp slt i32 %152, %154
  br i1 %155, label %156, label %176

156:                                              ; preds = %151
  %157 = load %struct.tnode*, %struct.tnode** %5, align 8
  %158 = getelementptr inbounds %struct.tnode, %struct.tnode* %157, i32 0, i32 3
  %159 = load %struct.node**, %struct.node*** %158, align 8
  %160 = load i32, i32* %6, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.node*, %struct.node** %159, i64 %161
  %163 = load %struct.node*, %struct.node** %162, align 8
  store %struct.node* %163, %struct.node** %11, align 8
  %164 = load %struct.node*, %struct.node** %11, align 8
  %165 = icmp ne %struct.node* %164, null
  br i1 %165, label %167, label %166

166:                                              ; preds = %156
  br label %173

167:                                              ; preds = %156
  %168 = load %struct.node*, %struct.node** %11, align 8
  %169 = call i32 @node_set_parent(%struct.node* %168, i32* null)
  %170 = load %struct.tnode*, %struct.tnode** %5, align 8
  %171 = call i32 @tnode_free_safe(%struct.tnode* %170)
  %172 = load %struct.node*, %struct.node** %11, align 8
  store %struct.node* %172, %struct.node** %3, align 8
  br label %180

173:                                              ; preds = %166
  %174 = load i32, i32* %6, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %6, align 4
  br label %151

176:                                              ; preds = %151
  br label %177

177:                                              ; preds = %176, %141
  %178 = load %struct.tnode*, %struct.tnode** %5, align 8
  %179 = bitcast %struct.tnode* %178 to %struct.node*
  store %struct.node* %179, %struct.node** %3, align 8
  br label %180

180:                                              ; preds = %177, %167, %101, %26, %14
  %181 = load %struct.node*, %struct.node** %3, align 8
  ret %struct.node* %181
}

declare dso_local i32 @pr_debug(i8*, %struct.tnode*, i32, i32) #1

declare dso_local i32 @tnode_child_length(%struct.tnode*) #1

declare dso_local i32 @tnode_free_safe(%struct.tnode*) #1

declare dso_local i32 @check_tnode(%struct.tnode*) #1

declare dso_local i32 @node_parent(%struct.node*) #1

declare dso_local %struct.tnode* @inflate(%struct.trie*, %struct.tnode*) #1

declare dso_local i64 @IS_ERR(%struct.tnode*) #1

declare dso_local %struct.tnode* @halve(%struct.trie*, %struct.tnode*) #1

declare dso_local i32 @node_set_parent(%struct.node*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
