; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_ebitmap.c_ebitmap_set_bit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_ebitmap.c_ebitmap_set_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ebitmap = type { i64, %struct.ebitmap_node* }
%struct.ebitmap_node = type { i64, %struct.ebitmap_node*, i32 }

@EBITMAP_SIZE = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ebitmap_set_bit(%struct.ebitmap* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ebitmap*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ebitmap_node*, align 8
  %9 = alloca %struct.ebitmap_node*, align 8
  %10 = alloca %struct.ebitmap_node*, align 8
  %11 = alloca i32, align 4
  store %struct.ebitmap* %0, %struct.ebitmap** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.ebitmap_node* null, %struct.ebitmap_node** %9, align 8
  %12 = load %struct.ebitmap*, %struct.ebitmap** %5, align 8
  %13 = getelementptr inbounds %struct.ebitmap, %struct.ebitmap* %12, i32 0, i32 1
  %14 = load %struct.ebitmap_node*, %struct.ebitmap_node** %13, align 8
  store %struct.ebitmap_node* %14, %struct.ebitmap_node** %8, align 8
  br label %15

15:                                               ; preds = %94, %3
  %16 = load %struct.ebitmap_node*, %struct.ebitmap_node** %8, align 8
  %17 = icmp ne %struct.ebitmap_node* %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %15
  %19 = load %struct.ebitmap_node*, %struct.ebitmap_node** %8, align 8
  %20 = getelementptr inbounds %struct.ebitmap_node, %struct.ebitmap_node* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* %6, align 8
  %23 = icmp ule i64 %21, %22
  br label %24

24:                                               ; preds = %18, %15
  %25 = phi i1 [ false, %15 ], [ %23, %18 ]
  br i1 %25, label %26, label %99

26:                                               ; preds = %24
  %27 = load %struct.ebitmap_node*, %struct.ebitmap_node** %8, align 8
  %28 = getelementptr inbounds %struct.ebitmap_node, %struct.ebitmap_node* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @EBITMAP_SIZE, align 8
  %31 = add i64 %29, %30
  %32 = load i64, i64* %6, align 8
  %33 = icmp ugt i64 %31, %32
  br i1 %33, label %34, label %94

34:                                               ; preds = %26
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = load %struct.ebitmap_node*, %struct.ebitmap_node** %8, align 8
  %39 = load i64, i64* %6, align 8
  %40 = call i32 @ebitmap_node_set_bit(%struct.ebitmap_node* %38, i64 %39)
  br label %93

41:                                               ; preds = %34
  %42 = load %struct.ebitmap_node*, %struct.ebitmap_node** %8, align 8
  %43 = load i64, i64* %6, align 8
  %44 = call i32 @ebitmap_node_clr_bit(%struct.ebitmap_node* %42, i64 %43)
  %45 = load %struct.ebitmap_node*, %struct.ebitmap_node** %8, align 8
  %46 = getelementptr inbounds %struct.ebitmap_node, %struct.ebitmap_node* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load i64, i64* @EBITMAP_SIZE, align 8
  %49 = call i32 @find_first_bit(i32 %47, i64 %48)
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %11, align 4
  %51 = zext i32 %50 to i64
  %52 = load i64, i64* @EBITMAP_SIZE, align 8
  %53 = icmp ult i64 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %41
  store i32 0, i32* %4, align 4
  br label %154

55:                                               ; preds = %41
  %56 = load %struct.ebitmap_node*, %struct.ebitmap_node** %8, align 8
  %57 = getelementptr inbounds %struct.ebitmap_node, %struct.ebitmap_node* %56, i32 0, i32 1
  %58 = load %struct.ebitmap_node*, %struct.ebitmap_node** %57, align 8
  %59 = icmp ne %struct.ebitmap_node* %58, null
  br i1 %59, label %75, label %60

60:                                               ; preds = %55
  %61 = load %struct.ebitmap_node*, %struct.ebitmap_node** %9, align 8
  %62 = icmp ne %struct.ebitmap_node* %61, null
  br i1 %62, label %63, label %71

63:                                               ; preds = %60
  %64 = load %struct.ebitmap_node*, %struct.ebitmap_node** %9, align 8
  %65 = getelementptr inbounds %struct.ebitmap_node, %struct.ebitmap_node* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @EBITMAP_SIZE, align 8
  %68 = add i64 %66, %67
  %69 = load %struct.ebitmap*, %struct.ebitmap** %5, align 8
  %70 = getelementptr inbounds %struct.ebitmap, %struct.ebitmap* %69, i32 0, i32 0
  store i64 %68, i64* %70, align 8
  br label %74

71:                                               ; preds = %60
  %72 = load %struct.ebitmap*, %struct.ebitmap** %5, align 8
  %73 = getelementptr inbounds %struct.ebitmap, %struct.ebitmap* %72, i32 0, i32 0
  store i64 0, i64* %73, align 8
  br label %74

74:                                               ; preds = %71, %63
  br label %75

75:                                               ; preds = %74, %55
  %76 = load %struct.ebitmap_node*, %struct.ebitmap_node** %9, align 8
  %77 = icmp ne %struct.ebitmap_node* %76, null
  br i1 %77, label %78, label %84

78:                                               ; preds = %75
  %79 = load %struct.ebitmap_node*, %struct.ebitmap_node** %8, align 8
  %80 = getelementptr inbounds %struct.ebitmap_node, %struct.ebitmap_node* %79, i32 0, i32 1
  %81 = load %struct.ebitmap_node*, %struct.ebitmap_node** %80, align 8
  %82 = load %struct.ebitmap_node*, %struct.ebitmap_node** %9, align 8
  %83 = getelementptr inbounds %struct.ebitmap_node, %struct.ebitmap_node* %82, i32 0, i32 1
  store %struct.ebitmap_node* %81, %struct.ebitmap_node** %83, align 8
  br label %90

84:                                               ; preds = %75
  %85 = load %struct.ebitmap_node*, %struct.ebitmap_node** %8, align 8
  %86 = getelementptr inbounds %struct.ebitmap_node, %struct.ebitmap_node* %85, i32 0, i32 1
  %87 = load %struct.ebitmap_node*, %struct.ebitmap_node** %86, align 8
  %88 = load %struct.ebitmap*, %struct.ebitmap** %5, align 8
  %89 = getelementptr inbounds %struct.ebitmap, %struct.ebitmap* %88, i32 0, i32 1
  store %struct.ebitmap_node* %87, %struct.ebitmap_node** %89, align 8
  br label %90

90:                                               ; preds = %84, %78
  %91 = load %struct.ebitmap_node*, %struct.ebitmap_node** %8, align 8
  %92 = call i32 @kfree(%struct.ebitmap_node* %91)
  br label %93

93:                                               ; preds = %90, %37
  store i32 0, i32* %4, align 4
  br label %154

94:                                               ; preds = %26
  %95 = load %struct.ebitmap_node*, %struct.ebitmap_node** %8, align 8
  store %struct.ebitmap_node* %95, %struct.ebitmap_node** %9, align 8
  %96 = load %struct.ebitmap_node*, %struct.ebitmap_node** %8, align 8
  %97 = getelementptr inbounds %struct.ebitmap_node, %struct.ebitmap_node* %96, i32 0, i32 1
  %98 = load %struct.ebitmap_node*, %struct.ebitmap_node** %97, align 8
  store %struct.ebitmap_node* %98, %struct.ebitmap_node** %8, align 8
  br label %15

99:                                               ; preds = %24
  %100 = load i32, i32* %7, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %99
  store i32 0, i32* %4, align 4
  br label %154

103:                                              ; preds = %99
  %104 = load i32, i32* @GFP_ATOMIC, align 4
  %105 = call %struct.ebitmap_node* @kzalloc(i32 24, i32 %104)
  store %struct.ebitmap_node* %105, %struct.ebitmap_node** %10, align 8
  %106 = load %struct.ebitmap_node*, %struct.ebitmap_node** %10, align 8
  %107 = icmp ne %struct.ebitmap_node* %106, null
  br i1 %107, label %111, label %108

108:                                              ; preds = %103
  %109 = load i32, i32* @ENOMEM, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %4, align 4
  br label %154

111:                                              ; preds = %103
  %112 = load i64, i64* %6, align 8
  %113 = load i64, i64* %6, align 8
  %114 = load i64, i64* @EBITMAP_SIZE, align 8
  %115 = urem i64 %113, %114
  %116 = sub i64 %112, %115
  %117 = load %struct.ebitmap_node*, %struct.ebitmap_node** %10, align 8
  %118 = getelementptr inbounds %struct.ebitmap_node, %struct.ebitmap_node* %117, i32 0, i32 0
  store i64 %116, i64* %118, align 8
  %119 = load %struct.ebitmap_node*, %struct.ebitmap_node** %10, align 8
  %120 = load i64, i64* %6, align 8
  %121 = call i32 @ebitmap_node_set_bit(%struct.ebitmap_node* %119, i64 %120)
  %122 = load %struct.ebitmap_node*, %struct.ebitmap_node** %8, align 8
  %123 = icmp ne %struct.ebitmap_node* %122, null
  br i1 %123, label %132, label %124

124:                                              ; preds = %111
  %125 = load %struct.ebitmap_node*, %struct.ebitmap_node** %10, align 8
  %126 = getelementptr inbounds %struct.ebitmap_node, %struct.ebitmap_node* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @EBITMAP_SIZE, align 8
  %129 = add i64 %127, %128
  %130 = load %struct.ebitmap*, %struct.ebitmap** %5, align 8
  %131 = getelementptr inbounds %struct.ebitmap, %struct.ebitmap* %130, i32 0, i32 0
  store i64 %129, i64* %131, align 8
  br label %132

132:                                              ; preds = %124, %111
  %133 = load %struct.ebitmap_node*, %struct.ebitmap_node** %9, align 8
  %134 = icmp ne %struct.ebitmap_node* %133, null
  br i1 %134, label %135, label %144

135:                                              ; preds = %132
  %136 = load %struct.ebitmap_node*, %struct.ebitmap_node** %9, align 8
  %137 = getelementptr inbounds %struct.ebitmap_node, %struct.ebitmap_node* %136, i32 0, i32 1
  %138 = load %struct.ebitmap_node*, %struct.ebitmap_node** %137, align 8
  %139 = load %struct.ebitmap_node*, %struct.ebitmap_node** %10, align 8
  %140 = getelementptr inbounds %struct.ebitmap_node, %struct.ebitmap_node* %139, i32 0, i32 1
  store %struct.ebitmap_node* %138, %struct.ebitmap_node** %140, align 8
  %141 = load %struct.ebitmap_node*, %struct.ebitmap_node** %10, align 8
  %142 = load %struct.ebitmap_node*, %struct.ebitmap_node** %9, align 8
  %143 = getelementptr inbounds %struct.ebitmap_node, %struct.ebitmap_node* %142, i32 0, i32 1
  store %struct.ebitmap_node* %141, %struct.ebitmap_node** %143, align 8
  br label %153

144:                                              ; preds = %132
  %145 = load %struct.ebitmap*, %struct.ebitmap** %5, align 8
  %146 = getelementptr inbounds %struct.ebitmap, %struct.ebitmap* %145, i32 0, i32 1
  %147 = load %struct.ebitmap_node*, %struct.ebitmap_node** %146, align 8
  %148 = load %struct.ebitmap_node*, %struct.ebitmap_node** %10, align 8
  %149 = getelementptr inbounds %struct.ebitmap_node, %struct.ebitmap_node* %148, i32 0, i32 1
  store %struct.ebitmap_node* %147, %struct.ebitmap_node** %149, align 8
  %150 = load %struct.ebitmap_node*, %struct.ebitmap_node** %10, align 8
  %151 = load %struct.ebitmap*, %struct.ebitmap** %5, align 8
  %152 = getelementptr inbounds %struct.ebitmap, %struct.ebitmap* %151, i32 0, i32 1
  store %struct.ebitmap_node* %150, %struct.ebitmap_node** %152, align 8
  br label %153

153:                                              ; preds = %144, %135
  store i32 0, i32* %4, align 4
  br label %154

154:                                              ; preds = %153, %108, %102, %93, %54
  %155 = load i32, i32* %4, align 4
  ret i32 %155
}

declare dso_local i32 @ebitmap_node_set_bit(%struct.ebitmap_node*, i64) #1

declare dso_local i32 @ebitmap_node_clr_bit(%struct.ebitmap_node*, i64) #1

declare dso_local i32 @find_first_bit(i32, i64) #1

declare dso_local i32 @kfree(%struct.ebitmap_node*) #1

declare dso_local %struct.ebitmap_node* @kzalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
