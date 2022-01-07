; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_swap.c_put_compound_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_swap.c_put_compound_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32, i32, %struct.page* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.page*)* @put_compound_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @put_compound_page(%struct.page* %0) #0 {
  %2 = alloca %struct.page*, align 8
  %3 = alloca %struct.page*, align 8
  %4 = alloca i64, align 8
  store %struct.page* %0, %struct.page** %2, align 8
  %5 = load %struct.page*, %struct.page** %2, align 8
  %6 = call i32 @PageTail(%struct.page* %5)
  %7 = call i64 @unlikely(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %131

9:                                                ; preds = %1
  %10 = load %struct.page*, %struct.page** %2, align 8
  %11 = call %struct.page* @compound_trans_head(%struct.page* %10)
  store %struct.page* %11, %struct.page** %3, align 8
  %12 = load %struct.page*, %struct.page** %2, align 8
  %13 = load %struct.page*, %struct.page** %3, align 8
  %14 = icmp ne %struct.page* %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %9
  %16 = load %struct.page*, %struct.page** %3, align 8
  %17 = call i64 @get_page_unless_zero(%struct.page* %16)
  %18 = icmp ne i64 %17, 0
  br label %19

19:                                               ; preds = %15, %9
  %20 = phi i1 [ false, %9 ], [ %18, %15 ]
  %21 = zext i1 %20 to i32
  %22 = call i64 @likely(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %126

24:                                               ; preds = %19
  %25 = load %struct.page*, %struct.page** %3, align 8
  %26 = call i64 @PageSlab(%struct.page* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %43

28:                                               ; preds = %24
  %29 = load %struct.page*, %struct.page** %2, align 8
  %30 = call i32 @PageTail(%struct.page* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %28
  %33 = load %struct.page*, %struct.page** %3, align 8
  %34 = call i64 @put_page_testzero(%struct.page* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = call i32 @VM_BUG_ON(i32 1)
  br label %38

38:                                               ; preds = %36, %32
  %39 = load %struct.page*, %struct.page** %2, align 8
  %40 = getelementptr inbounds %struct.page, %struct.page* %39, i32 0, i32 1
  %41 = call i32 @atomic_dec(i32* %40)
  br label %110

42:                                               ; preds = %28
  br label %57

43:                                               ; preds = %24
  %44 = load %struct.page*, %struct.page** %3, align 8
  %45 = call i64 @compound_lock_irqsave(%struct.page* %44)
  store i64 %45, i64* %4, align 8
  %46 = load %struct.page*, %struct.page** %2, align 8
  %47 = call i32 @PageTail(%struct.page* %46)
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  %51 = call i64 @unlikely(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %73

53:                                               ; preds = %43
  %54 = load %struct.page*, %struct.page** %3, align 8
  %55 = load i64, i64* %4, align 8
  %56 = call i32 @compound_unlock_irqrestore(%struct.page* %54, i64 %55)
  br label %57

57:                                               ; preds = %53, %42
  %58 = load %struct.page*, %struct.page** %3, align 8
  %59 = call i64 @put_page_testzero(%struct.page* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %57
  %62 = load %struct.page*, %struct.page** %3, align 8
  %63 = call i32 @__put_single_page(%struct.page* %62)
  br label %64

64:                                               ; preds = %61, %57
  br label %65

65:                                               ; preds = %126, %64
  %66 = load %struct.page*, %struct.page** %2, align 8
  %67 = call i64 @put_page_testzero(%struct.page* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %65
  %70 = load %struct.page*, %struct.page** %2, align 8
  %71 = call i32 @__put_single_page(%struct.page* %70)
  br label %72

72:                                               ; preds = %69, %65
  br label %147

73:                                               ; preds = %43
  %74 = load %struct.page*, %struct.page** %3, align 8
  %75 = load %struct.page*, %struct.page** %2, align 8
  %76 = getelementptr inbounds %struct.page, %struct.page* %75, i32 0, i32 2
  %77 = load %struct.page*, %struct.page** %76, align 8
  %78 = icmp ne %struct.page* %74, %77
  %79 = zext i1 %78 to i32
  %80 = call i32 @VM_BUG_ON(i32 %79)
  %81 = load %struct.page*, %struct.page** %3, align 8
  %82 = call i64 @put_page_testzero(%struct.page* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %73
  %85 = call i32 @VM_BUG_ON(i32 1)
  br label %86

86:                                               ; preds = %84, %73
  %87 = load %struct.page*, %struct.page** %2, align 8
  %88 = call i64 @page_mapcount(%struct.page* %87)
  %89 = icmp sle i64 %88, 0
  %90 = zext i1 %89 to i32
  %91 = call i32 @VM_BUG_ON(i32 %90)
  %92 = load %struct.page*, %struct.page** %2, align 8
  %93 = getelementptr inbounds %struct.page, %struct.page* %92, i32 0, i32 1
  %94 = call i32 @atomic_dec(i32* %93)
  %95 = load %struct.page*, %struct.page** %3, align 8
  %96 = getelementptr inbounds %struct.page, %struct.page* %95, i32 0, i32 0
  %97 = call i64 @atomic_read(i32* %96)
  %98 = icmp sle i64 %97, 0
  %99 = zext i1 %98 to i32
  %100 = call i32 @VM_BUG_ON(i32 %99)
  %101 = load %struct.page*, %struct.page** %2, align 8
  %102 = getelementptr inbounds %struct.page, %struct.page* %101, i32 0, i32 0
  %103 = call i64 @atomic_read(i32* %102)
  %104 = icmp ne i64 %103, 0
  %105 = zext i1 %104 to i32
  %106 = call i32 @VM_BUG_ON(i32 %105)
  %107 = load %struct.page*, %struct.page** %3, align 8
  %108 = load i64, i64* %4, align 8
  %109 = call i32 @compound_unlock_irqrestore(%struct.page* %107, i64 %108)
  br label %110

110:                                              ; preds = %86, %38
  %111 = load %struct.page*, %struct.page** %3, align 8
  %112 = call i64 @put_page_testzero(%struct.page* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %125

114:                                              ; preds = %110
  %115 = load %struct.page*, %struct.page** %3, align 8
  %116 = call i64 @PageHead(%struct.page* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %114
  %119 = load %struct.page*, %struct.page** %3, align 8
  %120 = call i32 @__put_compound_page(%struct.page* %119)
  br label %124

121:                                              ; preds = %114
  %122 = load %struct.page*, %struct.page** %3, align 8
  %123 = call i32 @__put_single_page(%struct.page* %122)
  br label %124

124:                                              ; preds = %121, %118
  br label %125

125:                                              ; preds = %124, %110
  br label %130

126:                                              ; preds = %19
  %127 = load %struct.page*, %struct.page** %2, align 8
  %128 = call i32 @PageTail(%struct.page* %127)
  %129 = call i32 @VM_BUG_ON(i32 %128)
  br label %65

130:                                              ; preds = %125
  br label %147

131:                                              ; preds = %1
  %132 = load %struct.page*, %struct.page** %2, align 8
  %133 = call i64 @put_page_testzero(%struct.page* %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %146

135:                                              ; preds = %131
  %136 = load %struct.page*, %struct.page** %2, align 8
  %137 = call i64 @PageHead(%struct.page* %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %135
  %140 = load %struct.page*, %struct.page** %2, align 8
  %141 = call i32 @__put_compound_page(%struct.page* %140)
  br label %145

142:                                              ; preds = %135
  %143 = load %struct.page*, %struct.page** %2, align 8
  %144 = call i32 @__put_single_page(%struct.page* %143)
  br label %145

145:                                              ; preds = %142, %139
  br label %146

146:                                              ; preds = %145, %131
  br label %147

147:                                              ; preds = %72, %146, %130
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @PageTail(%struct.page*) #1

declare dso_local %struct.page* @compound_trans_head(%struct.page*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @get_page_unless_zero(%struct.page*) #1

declare dso_local i64 @PageSlab(%struct.page*) #1

declare dso_local i64 @put_page_testzero(%struct.page*) #1

declare dso_local i32 @VM_BUG_ON(i32) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i64 @compound_lock_irqsave(%struct.page*) #1

declare dso_local i32 @compound_unlock_irqrestore(%struct.page*, i64) #1

declare dso_local i32 @__put_single_page(%struct.page*) #1

declare dso_local i64 @page_mapcount(%struct.page*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i64 @PageHead(%struct.page*) #1

declare dso_local i32 @__put_compound_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
