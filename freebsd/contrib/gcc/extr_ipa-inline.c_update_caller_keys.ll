; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ipa-inline.c_update_caller_keys.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ipa-inline.c_update_caller_keys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgraph_node = type { %struct.cgraph_edge*, %struct.TYPE_8__, %struct.TYPE_7__, i32 }
%struct.cgraph_edge = type { i8*, %struct.TYPE_9__*, %struct.cgraph_edge* }
%struct.TYPE_9__ = type { i32, %struct.cgraph_edge* }
%struct.TYPE_8__ = type { i32, i64 }
%struct.TYPE_7__ = type { i32, i64 }

@INT_MIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.cgraph_node*, i32)* @update_caller_keys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_caller_keys(i32 %0, %struct.cgraph_node* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cgraph_node*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cgraph_edge*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_9__*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.cgraph_node* %1, %struct.cgraph_node** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.cgraph_node*, %struct.cgraph_node** %5, align 8
  %12 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %28

16:                                               ; preds = %3
  %17 = load %struct.cgraph_node*, %struct.cgraph_node** %5, align 8
  %18 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %16
  %23 = load %struct.cgraph_node*, %struct.cgraph_node** %5, align 8
  %24 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %22, %16, %3
  br label %153

29:                                               ; preds = %22
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.cgraph_node*, %struct.cgraph_node** %5, align 8
  %32 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = call i64 @bitmap_bit_p(i32 %30, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  br label %153

37:                                               ; preds = %29
  %38 = load i32, i32* %6, align 4
  %39 = load %struct.cgraph_node*, %struct.cgraph_node** %5, align 8
  %40 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @bitmap_set_bit(i32 %38, i32 %41)
  %43 = load i32, i32* @INT_MIN, align 4
  %44 = load %struct.cgraph_node*, %struct.cgraph_node** %5, align 8
  %45 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  store i32 %43, i32* %46, align 8
  %47 = load %struct.cgraph_node*, %struct.cgraph_node** %5, align 8
  %48 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %37
  br label %153

53:                                               ; preds = %37
  %54 = load %struct.cgraph_node*, %struct.cgraph_node** %5, align 8
  %55 = call i32 @cgraph_default_inline_p(%struct.cgraph_node* %54, i8** %8)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %92, label %57

57:                                               ; preds = %53
  %58 = load %struct.cgraph_node*, %struct.cgraph_node** %5, align 8
  %59 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %58, i32 0, i32 0
  %60 = load %struct.cgraph_edge*, %struct.cgraph_edge** %59, align 8
  store %struct.cgraph_edge* %60, %struct.cgraph_edge** %7, align 8
  br label %61

61:                                               ; preds = %87, %57
  %62 = load %struct.cgraph_edge*, %struct.cgraph_edge** %7, align 8
  %63 = icmp ne %struct.cgraph_edge* %62, null
  br i1 %63, label %64, label %91

64:                                               ; preds = %61
  %65 = load %struct.cgraph_edge*, %struct.cgraph_edge** %7, align 8
  %66 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %65, i32 0, i32 1
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %66, align 8
  %68 = icmp ne %struct.TYPE_9__* %67, null
  br i1 %68, label %69, label %86

69:                                               ; preds = %64
  %70 = load i32, i32* %4, align 4
  %71 = load %struct.cgraph_edge*, %struct.cgraph_edge** %7, align 8
  %72 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %71, i32 0, i32 1
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %72, align 8
  %74 = call i32 @fibheap_delete_node(i32 %70, %struct.TYPE_9__* %73)
  %75 = load %struct.cgraph_edge*, %struct.cgraph_edge** %7, align 8
  %76 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %75, i32 0, i32 1
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %76, align 8
  %77 = load %struct.cgraph_edge*, %struct.cgraph_edge** %7, align 8
  %78 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %77, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %81, label %85

81:                                               ; preds = %69
  %82 = load i8*, i8** %8, align 8
  %83 = load %struct.cgraph_edge*, %struct.cgraph_edge** %7, align 8
  %84 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %83, i32 0, i32 0
  store i8* %82, i8** %84, align 8
  br label %85

85:                                               ; preds = %81, %69
  br label %86

86:                                               ; preds = %85, %64
  br label %87

87:                                               ; preds = %86
  %88 = load %struct.cgraph_edge*, %struct.cgraph_edge** %7, align 8
  %89 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %88, i32 0, i32 2
  %90 = load %struct.cgraph_edge*, %struct.cgraph_edge** %89, align 8
  store %struct.cgraph_edge* %90, %struct.cgraph_edge** %7, align 8
  br label %61

91:                                               ; preds = %61
  br label %153

92:                                               ; preds = %53
  %93 = load %struct.cgraph_node*, %struct.cgraph_node** %5, align 8
  %94 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %93, i32 0, i32 0
  %95 = load %struct.cgraph_edge*, %struct.cgraph_edge** %94, align 8
  store %struct.cgraph_edge* %95, %struct.cgraph_edge** %7, align 8
  br label %96

96:                                               ; preds = %149, %92
  %97 = load %struct.cgraph_edge*, %struct.cgraph_edge** %7, align 8
  %98 = icmp ne %struct.cgraph_edge* %97, null
  br i1 %98, label %99, label %153

99:                                               ; preds = %96
  %100 = load %struct.cgraph_edge*, %struct.cgraph_edge** %7, align 8
  %101 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %100, i32 0, i32 0
  %102 = load i8*, i8** %101, align 8
  %103 = icmp ne i8* %102, null
  br i1 %103, label %104, label %148

104:                                              ; preds = %99
  %105 = load %struct.cgraph_edge*, %struct.cgraph_edge** %7, align 8
  %106 = call i32 @cgraph_edge_badness(%struct.cgraph_edge* %105)
  store i32 %106, i32* %9, align 4
  %107 = load %struct.cgraph_edge*, %struct.cgraph_edge** %7, align 8
  %108 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %107, i32 0, i32 1
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %108, align 8
  %110 = icmp ne %struct.TYPE_9__* %109, null
  br i1 %110, label %111, label %141

111:                                              ; preds = %104
  %112 = load %struct.cgraph_edge*, %struct.cgraph_edge** %7, align 8
  %113 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %112, i32 0, i32 1
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %113, align 8
  store %struct.TYPE_9__* %114, %struct.TYPE_9__** %10, align 8
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 1
  %117 = load %struct.cgraph_edge*, %struct.cgraph_edge** %116, align 8
  %118 = load %struct.cgraph_edge*, %struct.cgraph_edge** %7, align 8
  %119 = icmp eq %struct.cgraph_edge* %117, %118
  %120 = zext i1 %119 to i32
  %121 = call i32 @gcc_assert(i32 %120)
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* %9, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %127, label %128

127:                                              ; preds = %111
  br label %149

128:                                              ; preds = %111
  %129 = load i32, i32* %4, align 4
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %131 = load i32, i32* %9, align 4
  %132 = call i64 @fibheap_replace_key(i32 %129, %struct.TYPE_9__* %130, i32 %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %128
  br label %149

135:                                              ; preds = %128
  %136 = load i32, i32* %4, align 4
  %137 = load %struct.cgraph_edge*, %struct.cgraph_edge** %7, align 8
  %138 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %137, i32 0, i32 1
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %138, align 8
  %140 = call i32 @fibheap_delete_node(i32 %136, %struct.TYPE_9__* %139)
  br label %141

141:                                              ; preds = %135, %104
  %142 = load i32, i32* %4, align 4
  %143 = load i32, i32* %9, align 4
  %144 = load %struct.cgraph_edge*, %struct.cgraph_edge** %7, align 8
  %145 = call %struct.TYPE_9__* @fibheap_insert(i32 %142, i32 %143, %struct.cgraph_edge* %144)
  %146 = load %struct.cgraph_edge*, %struct.cgraph_edge** %7, align 8
  %147 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %146, i32 0, i32 1
  store %struct.TYPE_9__* %145, %struct.TYPE_9__** %147, align 8
  br label %148

148:                                              ; preds = %141, %99
  br label %149

149:                                              ; preds = %148, %134, %127
  %150 = load %struct.cgraph_edge*, %struct.cgraph_edge** %7, align 8
  %151 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %150, i32 0, i32 2
  %152 = load %struct.cgraph_edge*, %struct.cgraph_edge** %151, align 8
  store %struct.cgraph_edge* %152, %struct.cgraph_edge** %7, align 8
  br label %96

153:                                              ; preds = %28, %36, %52, %91, %96
  ret void
}

declare dso_local i64 @bitmap_bit_p(i32, i32) #1

declare dso_local i32 @bitmap_set_bit(i32, i32) #1

declare dso_local i32 @cgraph_default_inline_p(%struct.cgraph_node*, i8**) #1

declare dso_local i32 @fibheap_delete_node(i32, %struct.TYPE_9__*) #1

declare dso_local i32 @cgraph_edge_badness(%struct.cgraph_edge*) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @fibheap_replace_key(i32, %struct.TYPE_9__*, i32) #1

declare dso_local %struct.TYPE_9__* @fibheap_insert(i32, i32, %struct.cgraph_edge*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
