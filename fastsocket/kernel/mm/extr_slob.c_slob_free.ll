; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_slob.c_slob_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_slob.c_slob_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slob_page = type { i32, i8* }

@slob_lock = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i64 0, align 8
@free_slob_small = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @slob_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @slob_free(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.slob_page*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load i8*, i8** %3, align 8
  store i8* %11, i8** %8, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = call i32 @ZERO_OR_NULL_PTR(i8* %12)
  %14 = call i64 @unlikely(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %191

17:                                               ; preds = %2
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i32 @BUG_ON(i32 %21)
  %23 = load i8*, i8** %3, align 8
  %24 = call %struct.slob_page* @slob_page(i8* %23)
  store %struct.slob_page* %24, %struct.slob_page** %5, align 8
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @SLOB_UNITS(i32 %25)
  store i32 %26, i32* %9, align 4
  %27 = load i64, i64* %10, align 8
  %28 = call i32 @spin_lock_irqsave(i32* @slob_lock, i64 %27)
  %29 = load %struct.slob_page*, %struct.slob_page** %5, align 8
  %30 = getelementptr inbounds %struct.slob_page, %struct.slob_page* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %9, align 4
  %33 = add nsw i32 %31, %32
  %34 = load i32, i32* @PAGE_SIZE, align 4
  %35 = call i32 @SLOB_UNITS(i32 %34)
  %36 = icmp eq i32 %33, %35
  br i1 %36, label %37, label %53

37:                                               ; preds = %17
  %38 = load %struct.slob_page*, %struct.slob_page** %5, align 8
  %39 = call i64 @slob_page_free(%struct.slob_page* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load %struct.slob_page*, %struct.slob_page** %5, align 8
  %43 = call i32 @clear_slob_page_free(%struct.slob_page* %42)
  br label %44

44:                                               ; preds = %41, %37
  %45 = load i64, i64* %10, align 8
  %46 = call i32 @spin_unlock_irqrestore(i32* @slob_lock, i64 %45)
  %47 = load %struct.slob_page*, %struct.slob_page** %5, align 8
  %48 = call i32 @clear_slob_page(%struct.slob_page* %47)
  %49 = load %struct.slob_page*, %struct.slob_page** %5, align 8
  %50 = call i32 @free_slob_page(%struct.slob_page* %49)
  %51 = load i8*, i8** %8, align 8
  %52 = call i32 @slob_free_pages(i8* %51, i32 0)
  br label %191

53:                                               ; preds = %17
  %54 = load %struct.slob_page*, %struct.slob_page** %5, align 8
  %55 = call i64 @slob_page_free(%struct.slob_page* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %78, label %57

57:                                               ; preds = %53
  %58 = load i32, i32* %9, align 4
  %59 = load %struct.slob_page*, %struct.slob_page** %5, align 8
  %60 = getelementptr inbounds %struct.slob_page, %struct.slob_page* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = load i8*, i8** %8, align 8
  %62 = load %struct.slob_page*, %struct.slob_page** %5, align 8
  %63 = getelementptr inbounds %struct.slob_page, %struct.slob_page* %62, i32 0, i32 1
  store i8* %61, i8** %63, align 8
  %64 = load i8*, i8** %8, align 8
  %65 = load i32, i32* %9, align 4
  %66 = load i8*, i8** %8, align 8
  %67 = load i32, i32* @PAGE_SIZE, align 4
  %68 = call i32 @SLOB_UNITS(i32 %67)
  %69 = sext i32 %68 to i64
  %70 = getelementptr i8, i8* %66, i64 %69
  %71 = ptrtoint i8* %70 to i64
  %72 = load i64, i64* @PAGE_MASK, align 8
  %73 = and i64 %71, %72
  %74 = inttoptr i64 %73 to i8*
  %75 = call i32 @set_slob(i8* %64, i32 %65, i8* %74)
  %76 = load %struct.slob_page*, %struct.slob_page** %5, align 8
  %77 = call i32 @set_slob_page_free(%struct.slob_page* %76, i32* @free_slob_small)
  br label %188

78:                                               ; preds = %53
  %79 = load i32, i32* %9, align 4
  %80 = load %struct.slob_page*, %struct.slob_page** %5, align 8
  %81 = getelementptr inbounds %struct.slob_page, %struct.slob_page* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = add nsw i32 %82, %79
  store i32 %83, i32* %81, align 8
  %84 = load i8*, i8** %8, align 8
  %85 = load %struct.slob_page*, %struct.slob_page** %5, align 8
  %86 = getelementptr inbounds %struct.slob_page, %struct.slob_page* %85, i32 0, i32 1
  %87 = load i8*, i8** %86, align 8
  %88 = icmp ult i8* %84, %87
  br i1 %88, label %89, label %121

89:                                               ; preds = %78
  %90 = load i8*, i8** %8, align 8
  %91 = load i32, i32* %9, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr i8, i8* %90, i64 %92
  %94 = load %struct.slob_page*, %struct.slob_page** %5, align 8
  %95 = getelementptr inbounds %struct.slob_page, %struct.slob_page* %94, i32 0, i32 1
  %96 = load i8*, i8** %95, align 8
  %97 = icmp eq i8* %93, %96
  br i1 %97, label %98, label %111

98:                                               ; preds = %89
  %99 = load %struct.slob_page*, %struct.slob_page** %5, align 8
  %100 = getelementptr inbounds %struct.slob_page, %struct.slob_page* %99, i32 0, i32 1
  %101 = load i8*, i8** %100, align 8
  %102 = call i32 @slob_units(i8* %101)
  %103 = load i32, i32* %9, align 4
  %104 = add nsw i32 %103, %102
  store i32 %104, i32* %9, align 4
  %105 = load %struct.slob_page*, %struct.slob_page** %5, align 8
  %106 = getelementptr inbounds %struct.slob_page, %struct.slob_page* %105, i32 0, i32 1
  %107 = load i8*, i8** %106, align 8
  %108 = call i8* @slob_next(i8* %107)
  %109 = load %struct.slob_page*, %struct.slob_page** %5, align 8
  %110 = getelementptr inbounds %struct.slob_page, %struct.slob_page* %109, i32 0, i32 1
  store i8* %108, i8** %110, align 8
  br label %111

111:                                              ; preds = %98, %89
  %112 = load i8*, i8** %8, align 8
  %113 = load i32, i32* %9, align 4
  %114 = load %struct.slob_page*, %struct.slob_page** %5, align 8
  %115 = getelementptr inbounds %struct.slob_page, %struct.slob_page* %114, i32 0, i32 1
  %116 = load i8*, i8** %115, align 8
  %117 = call i32 @set_slob(i8* %112, i32 %113, i8* %116)
  %118 = load i8*, i8** %8, align 8
  %119 = load %struct.slob_page*, %struct.slob_page** %5, align 8
  %120 = getelementptr inbounds %struct.slob_page, %struct.slob_page* %119, i32 0, i32 1
  store i8* %118, i8** %120, align 8
  br label %187

121:                                              ; preds = %78
  %122 = load %struct.slob_page*, %struct.slob_page** %5, align 8
  %123 = getelementptr inbounds %struct.slob_page, %struct.slob_page* %122, i32 0, i32 1
  %124 = load i8*, i8** %123, align 8
  store i8* %124, i8** %6, align 8
  %125 = load i8*, i8** %6, align 8
  %126 = call i8* @slob_next(i8* %125)
  store i8* %126, i8** %7, align 8
  br label %127

127:                                              ; preds = %131, %121
  %128 = load i8*, i8** %8, align 8
  %129 = load i8*, i8** %7, align 8
  %130 = icmp ugt i8* %128, %129
  br i1 %130, label %131, label %135

131:                                              ; preds = %127
  %132 = load i8*, i8** %7, align 8
  store i8* %132, i8** %6, align 8
  %133 = load i8*, i8** %6, align 8
  %134 = call i8* @slob_next(i8* %133)
  store i8* %134, i8** %7, align 8
  br label %127

135:                                              ; preds = %127
  %136 = load i8*, i8** %6, align 8
  %137 = call i32 @slob_last(i8* %136)
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %156, label %139

139:                                              ; preds = %135
  %140 = load i8*, i8** %8, align 8
  %141 = load i32, i32* %9, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr i8, i8* %140, i64 %142
  %144 = load i8*, i8** %7, align 8
  %145 = icmp eq i8* %143, %144
  br i1 %145, label %146, label %156

146:                                              ; preds = %139
  %147 = load i8*, i8** %7, align 8
  %148 = call i32 @slob_units(i8* %147)
  %149 = load i32, i32* %9, align 4
  %150 = add nsw i32 %149, %148
  store i32 %150, i32* %9, align 4
  %151 = load i8*, i8** %8, align 8
  %152 = load i32, i32* %9, align 4
  %153 = load i8*, i8** %7, align 8
  %154 = call i8* @slob_next(i8* %153)
  %155 = call i32 @set_slob(i8* %151, i32 %152, i8* %154)
  br label %161

156:                                              ; preds = %139, %135
  %157 = load i8*, i8** %8, align 8
  %158 = load i32, i32* %9, align 4
  %159 = load i8*, i8** %7, align 8
  %160 = call i32 @set_slob(i8* %157, i32 %158, i8* %159)
  br label %161

161:                                              ; preds = %156, %146
  %162 = load i8*, i8** %6, align 8
  %163 = load i8*, i8** %6, align 8
  %164 = call i32 @slob_units(i8* %163)
  %165 = sext i32 %164 to i64
  %166 = getelementptr i8, i8* %162, i64 %165
  %167 = load i8*, i8** %8, align 8
  %168 = icmp eq i8* %166, %167
  br i1 %168, label %169, label %180

169:                                              ; preds = %161
  %170 = load i8*, i8** %8, align 8
  %171 = call i32 @slob_units(i8* %170)
  %172 = load i8*, i8** %6, align 8
  %173 = call i32 @slob_units(i8* %172)
  %174 = add nsw i32 %171, %173
  store i32 %174, i32* %9, align 4
  %175 = load i8*, i8** %6, align 8
  %176 = load i32, i32* %9, align 4
  %177 = load i8*, i8** %8, align 8
  %178 = call i8* @slob_next(i8* %177)
  %179 = call i32 @set_slob(i8* %175, i32 %176, i8* %178)
  br label %186

180:                                              ; preds = %161
  %181 = load i8*, i8** %6, align 8
  %182 = load i8*, i8** %6, align 8
  %183 = call i32 @slob_units(i8* %182)
  %184 = load i8*, i8** %8, align 8
  %185 = call i32 @set_slob(i8* %181, i32 %183, i8* %184)
  br label %186

186:                                              ; preds = %180, %169
  br label %187

187:                                              ; preds = %186, %111
  br label %188

188:                                              ; preds = %187, %57
  %189 = load i64, i64* %10, align 8
  %190 = call i32 @spin_unlock_irqrestore(i32* @slob_lock, i64 %189)
  br label %191

191:                                              ; preds = %188, %44, %16
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ZERO_OR_NULL_PTR(i8*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.slob_page* @slob_page(i8*) #1

declare dso_local i32 @SLOB_UNITS(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @slob_page_free(%struct.slob_page*) #1

declare dso_local i32 @clear_slob_page_free(%struct.slob_page*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @clear_slob_page(%struct.slob_page*) #1

declare dso_local i32 @free_slob_page(%struct.slob_page*) #1

declare dso_local i32 @slob_free_pages(i8*, i32) #1

declare dso_local i32 @set_slob(i8*, i32, i8*) #1

declare dso_local i32 @set_slob_page_free(%struct.slob_page*, i32*) #1

declare dso_local i32 @slob_units(i8*) #1

declare dso_local i8* @slob_next(i8*) #1

declare dso_local i32 @slob_last(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
