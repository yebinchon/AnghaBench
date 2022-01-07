; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/lib/extr_rbtree.c_rb_erase.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/lib/extr_rbtree.c_rb_erase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rb_node = type { %struct.rb_node*, %struct.rb_node*, i32 }
%struct.rb_root = type { %struct.rb_node* }

@RB_BLACK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rb_erase(%struct.rb_node* %0, %struct.rb_root* %1) #0 {
  %3 = alloca %struct.rb_node*, align 8
  %4 = alloca %struct.rb_root*, align 8
  %5 = alloca %struct.rb_node*, align 8
  %6 = alloca %struct.rb_node*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.rb_node*, align 8
  %9 = alloca %struct.rb_node*, align 8
  store %struct.rb_node* %0, %struct.rb_node** %3, align 8
  store %struct.rb_root* %1, %struct.rb_root** %4, align 8
  %10 = load %struct.rb_node*, %struct.rb_node** %3, align 8
  %11 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %10, i32 0, i32 1
  %12 = load %struct.rb_node*, %struct.rb_node** %11, align 8
  %13 = icmp ne %struct.rb_node* %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %2
  %15 = load %struct.rb_node*, %struct.rb_node** %3, align 8
  %16 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %15, i32 0, i32 0
  %17 = load %struct.rb_node*, %struct.rb_node** %16, align 8
  store %struct.rb_node* %17, %struct.rb_node** %5, align 8
  br label %116

18:                                               ; preds = %2
  %19 = load %struct.rb_node*, %struct.rb_node** %3, align 8
  %20 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %19, i32 0, i32 0
  %21 = load %struct.rb_node*, %struct.rb_node** %20, align 8
  %22 = icmp ne %struct.rb_node* %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %18
  %24 = load %struct.rb_node*, %struct.rb_node** %3, align 8
  %25 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %24, i32 0, i32 1
  %26 = load %struct.rb_node*, %struct.rb_node** %25, align 8
  store %struct.rb_node* %26, %struct.rb_node** %5, align 8
  br label %115

27:                                               ; preds = %18
  %28 = load %struct.rb_node*, %struct.rb_node** %3, align 8
  store %struct.rb_node* %28, %struct.rb_node** %8, align 8
  %29 = load %struct.rb_node*, %struct.rb_node** %3, align 8
  %30 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %29, i32 0, i32 0
  %31 = load %struct.rb_node*, %struct.rb_node** %30, align 8
  store %struct.rb_node* %31, %struct.rb_node** %3, align 8
  br label %32

32:                                               ; preds = %37, %27
  %33 = load %struct.rb_node*, %struct.rb_node** %3, align 8
  %34 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %33, i32 0, i32 1
  %35 = load %struct.rb_node*, %struct.rb_node** %34, align 8
  store %struct.rb_node* %35, %struct.rb_node** %9, align 8
  %36 = icmp ne %struct.rb_node* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load %struct.rb_node*, %struct.rb_node** %9, align 8
  store %struct.rb_node* %38, %struct.rb_node** %3, align 8
  br label %32

39:                                               ; preds = %32
  %40 = load %struct.rb_node*, %struct.rb_node** %8, align 8
  %41 = call %struct.rb_node* @rb_parent(%struct.rb_node* %40)
  %42 = icmp ne %struct.rb_node* %41, null
  br i1 %42, label %43, label %61

43:                                               ; preds = %39
  %44 = load %struct.rb_node*, %struct.rb_node** %8, align 8
  %45 = call %struct.rb_node* @rb_parent(%struct.rb_node* %44)
  %46 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %45, i32 0, i32 1
  %47 = load %struct.rb_node*, %struct.rb_node** %46, align 8
  %48 = load %struct.rb_node*, %struct.rb_node** %8, align 8
  %49 = icmp eq %struct.rb_node* %47, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %43
  %51 = load %struct.rb_node*, %struct.rb_node** %3, align 8
  %52 = load %struct.rb_node*, %struct.rb_node** %8, align 8
  %53 = call %struct.rb_node* @rb_parent(%struct.rb_node* %52)
  %54 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %53, i32 0, i32 1
  store %struct.rb_node* %51, %struct.rb_node** %54, align 8
  br label %60

55:                                               ; preds = %43
  %56 = load %struct.rb_node*, %struct.rb_node** %3, align 8
  %57 = load %struct.rb_node*, %struct.rb_node** %8, align 8
  %58 = call %struct.rb_node* @rb_parent(%struct.rb_node* %57)
  %59 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %58, i32 0, i32 0
  store %struct.rb_node* %56, %struct.rb_node** %59, align 8
  br label %60

60:                                               ; preds = %55, %50
  br label %65

61:                                               ; preds = %39
  %62 = load %struct.rb_node*, %struct.rb_node** %3, align 8
  %63 = load %struct.rb_root*, %struct.rb_root** %4, align 8
  %64 = getelementptr inbounds %struct.rb_root, %struct.rb_root* %63, i32 0, i32 0
  store %struct.rb_node* %62, %struct.rb_node** %64, align 8
  br label %65

65:                                               ; preds = %61, %60
  %66 = load %struct.rb_node*, %struct.rb_node** %3, align 8
  %67 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %66, i32 0, i32 0
  %68 = load %struct.rb_node*, %struct.rb_node** %67, align 8
  store %struct.rb_node* %68, %struct.rb_node** %5, align 8
  %69 = load %struct.rb_node*, %struct.rb_node** %3, align 8
  %70 = call %struct.rb_node* @rb_parent(%struct.rb_node* %69)
  store %struct.rb_node* %70, %struct.rb_node** %6, align 8
  %71 = load %struct.rb_node*, %struct.rb_node** %3, align 8
  %72 = call i32 @rb_color(%struct.rb_node* %71)
  store i32 %72, i32* %7, align 4
  %73 = load %struct.rb_node*, %struct.rb_node** %6, align 8
  %74 = load %struct.rb_node*, %struct.rb_node** %8, align 8
  %75 = icmp eq %struct.rb_node* %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %65
  %77 = load %struct.rb_node*, %struct.rb_node** %3, align 8
  store %struct.rb_node* %77, %struct.rb_node** %6, align 8
  br label %99

78:                                               ; preds = %65
  %79 = load %struct.rb_node*, %struct.rb_node** %5, align 8
  %80 = icmp ne %struct.rb_node* %79, null
  br i1 %80, label %81, label %85

81:                                               ; preds = %78
  %82 = load %struct.rb_node*, %struct.rb_node** %5, align 8
  %83 = load %struct.rb_node*, %struct.rb_node** %6, align 8
  %84 = call i32 @rb_set_parent(%struct.rb_node* %82, %struct.rb_node* %83)
  br label %85

85:                                               ; preds = %81, %78
  %86 = load %struct.rb_node*, %struct.rb_node** %5, align 8
  %87 = load %struct.rb_node*, %struct.rb_node** %6, align 8
  %88 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %87, i32 0, i32 1
  store %struct.rb_node* %86, %struct.rb_node** %88, align 8
  %89 = load %struct.rb_node*, %struct.rb_node** %8, align 8
  %90 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %89, i32 0, i32 0
  %91 = load %struct.rb_node*, %struct.rb_node** %90, align 8
  %92 = load %struct.rb_node*, %struct.rb_node** %3, align 8
  %93 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %92, i32 0, i32 0
  store %struct.rb_node* %91, %struct.rb_node** %93, align 8
  %94 = load %struct.rb_node*, %struct.rb_node** %8, align 8
  %95 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %94, i32 0, i32 0
  %96 = load %struct.rb_node*, %struct.rb_node** %95, align 8
  %97 = load %struct.rb_node*, %struct.rb_node** %3, align 8
  %98 = call i32 @rb_set_parent(%struct.rb_node* %96, %struct.rb_node* %97)
  br label %99

99:                                               ; preds = %85, %76
  %100 = load %struct.rb_node*, %struct.rb_node** %8, align 8
  %101 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.rb_node*, %struct.rb_node** %3, align 8
  %104 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %103, i32 0, i32 2
  store i32 %102, i32* %104, align 8
  %105 = load %struct.rb_node*, %struct.rb_node** %8, align 8
  %106 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %105, i32 0, i32 1
  %107 = load %struct.rb_node*, %struct.rb_node** %106, align 8
  %108 = load %struct.rb_node*, %struct.rb_node** %3, align 8
  %109 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %108, i32 0, i32 1
  store %struct.rb_node* %107, %struct.rb_node** %109, align 8
  %110 = load %struct.rb_node*, %struct.rb_node** %8, align 8
  %111 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %110, i32 0, i32 1
  %112 = load %struct.rb_node*, %struct.rb_node** %111, align 8
  %113 = load %struct.rb_node*, %struct.rb_node** %3, align 8
  %114 = call i32 @rb_set_parent(%struct.rb_node* %112, %struct.rb_node* %113)
  br label %150

115:                                              ; preds = %23
  br label %116

116:                                              ; preds = %115, %14
  %117 = load %struct.rb_node*, %struct.rb_node** %3, align 8
  %118 = call %struct.rb_node* @rb_parent(%struct.rb_node* %117)
  store %struct.rb_node* %118, %struct.rb_node** %6, align 8
  %119 = load %struct.rb_node*, %struct.rb_node** %3, align 8
  %120 = call i32 @rb_color(%struct.rb_node* %119)
  store i32 %120, i32* %7, align 4
  %121 = load %struct.rb_node*, %struct.rb_node** %5, align 8
  %122 = icmp ne %struct.rb_node* %121, null
  br i1 %122, label %123, label %127

123:                                              ; preds = %116
  %124 = load %struct.rb_node*, %struct.rb_node** %5, align 8
  %125 = load %struct.rb_node*, %struct.rb_node** %6, align 8
  %126 = call i32 @rb_set_parent(%struct.rb_node* %124, %struct.rb_node* %125)
  br label %127

127:                                              ; preds = %123, %116
  %128 = load %struct.rb_node*, %struct.rb_node** %6, align 8
  %129 = icmp ne %struct.rb_node* %128, null
  br i1 %129, label %130, label %145

130:                                              ; preds = %127
  %131 = load %struct.rb_node*, %struct.rb_node** %6, align 8
  %132 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %131, i32 0, i32 1
  %133 = load %struct.rb_node*, %struct.rb_node** %132, align 8
  %134 = load %struct.rb_node*, %struct.rb_node** %3, align 8
  %135 = icmp eq %struct.rb_node* %133, %134
  br i1 %135, label %136, label %140

136:                                              ; preds = %130
  %137 = load %struct.rb_node*, %struct.rb_node** %5, align 8
  %138 = load %struct.rb_node*, %struct.rb_node** %6, align 8
  %139 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %138, i32 0, i32 1
  store %struct.rb_node* %137, %struct.rb_node** %139, align 8
  br label %144

140:                                              ; preds = %130
  %141 = load %struct.rb_node*, %struct.rb_node** %5, align 8
  %142 = load %struct.rb_node*, %struct.rb_node** %6, align 8
  %143 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %142, i32 0, i32 0
  store %struct.rb_node* %141, %struct.rb_node** %143, align 8
  br label %144

144:                                              ; preds = %140, %136
  br label %149

145:                                              ; preds = %127
  %146 = load %struct.rb_node*, %struct.rb_node** %5, align 8
  %147 = load %struct.rb_root*, %struct.rb_root** %4, align 8
  %148 = getelementptr inbounds %struct.rb_root, %struct.rb_root* %147, i32 0, i32 0
  store %struct.rb_node* %146, %struct.rb_node** %148, align 8
  br label %149

149:                                              ; preds = %145, %144
  br label %150

150:                                              ; preds = %149, %99
  %151 = load i32, i32* %7, align 4
  %152 = load i32, i32* @RB_BLACK, align 4
  %153 = icmp eq i32 %151, %152
  br i1 %153, label %154, label %159

154:                                              ; preds = %150
  %155 = load %struct.rb_node*, %struct.rb_node** %5, align 8
  %156 = load %struct.rb_node*, %struct.rb_node** %6, align 8
  %157 = load %struct.rb_root*, %struct.rb_root** %4, align 8
  %158 = call i32 @__rb_erase_color(%struct.rb_node* %155, %struct.rb_node* %156, %struct.rb_root* %157)
  br label %159

159:                                              ; preds = %154, %150
  ret void
}

declare dso_local %struct.rb_node* @rb_parent(%struct.rb_node*) #1

declare dso_local i32 @rb_color(%struct.rb_node*) #1

declare dso_local i32 @rb_set_parent(%struct.rb_node*, %struct.rb_node*) #1

declare dso_local i32 @__rb_erase_color(%struct.rb_node*, %struct.rb_node*, %struct.rb_root*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
