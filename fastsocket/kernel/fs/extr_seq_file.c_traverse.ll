; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_seq_file.c_traverse.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_seq_file.c_traverse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i64, i64, i32, i8*, %struct.TYPE_2__*, i64, i64 }
%struct.TYPE_2__ = type { i32 (%struct.seq_file*, i8*)*, i32 (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i8*, i64*)*, i8* (%struct.seq_file*, i64*)* }

@PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i64)* @traverse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @traverse(%struct.seq_file* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 0, i64* %6, align 8
  store i32 0, i32* %8, align 4
  %10 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %11 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %10, i32 0, i32 6
  store i64 0, i64* %11, align 8
  store i64 0, i64* %7, align 8
  %12 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %13 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %12, i32 0, i32 1
  store i64 0, i64* %13, align 8
  %14 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %15 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %14, i32 0, i32 0
  store i64 0, i64* %15, align 8
  %16 = load i64, i64* %5, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %2
  %19 = load i64, i64* %7, align 8
  %20 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %21 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %20, i32 0, i32 5
  store i64 %19, i64* %21, align 8
  store i32 0, i32* %3, align 4
  br label %186

22:                                               ; preds = %2
  %23 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %24 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %23, i32 0, i32 3
  %25 = load i8*, i8** %24, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %43, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* @PAGE_SIZE, align 4
  %29 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %30 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 8
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call i8* @kmalloc(i32 %28, i32 %31)
  %33 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %34 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %33, i32 0, i32 3
  store i8* %32, i8** %34, align 8
  %35 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %36 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %35, i32 0, i32 3
  %37 = load i8*, i8** %36, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %27
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %186

42:                                               ; preds = %27
  br label %43

43:                                               ; preds = %42, %22
  %44 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %45 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %44, i32 0, i32 4
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 3
  %48 = load i8* (%struct.seq_file*, i64*)*, i8* (%struct.seq_file*, i64*)** %47, align 8
  %49 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %50 = call i8* %48(%struct.seq_file* %49, i64* %7)
  store i8* %50, i8** %9, align 8
  br label %51

51:                                               ; preds = %131, %43
  %52 = load i8*, i8** %9, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %140

54:                                               ; preds = %51
  %55 = load i8*, i8** %9, align 8
  %56 = call i32 @PTR_ERR(i8* %55)
  store i32 %56, i32* %8, align 4
  %57 = load i8*, i8** %9, align 8
  %58 = call i64 @IS_ERR(i8* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  br label %140

61:                                               ; preds = %54
  %62 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %63 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %62, i32 0, i32 4
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32 (%struct.seq_file*, i8*)*, i32 (%struct.seq_file*, i8*)** %65, align 8
  %67 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %68 = load i8*, i8** %9, align 8
  %69 = call i32 %66(%struct.seq_file* %67, i8* %68)
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %8, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %61
  br label %140

73:                                               ; preds = %61
  %74 = load i32, i32* %8, align 4
  %75 = call i64 @unlikely(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %73
  store i32 0, i32* %8, align 4
  %78 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %79 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %78, i32 0, i32 0
  store i64 0, i64* %79, align 8
  br label %80

80:                                               ; preds = %77, %73
  %81 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %82 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %85 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = sext i32 %86 to i64
  %88 = icmp eq i64 %83, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %80
  br label %153

90:                                               ; preds = %80
  %91 = load i64, i64* %6, align 8
  %92 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %93 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = add nsw i64 %91, %94
  %96 = load i64, i64* %5, align 8
  %97 = icmp sgt i64 %95, %96
  br i1 %97, label %98, label %114

98:                                               ; preds = %90
  %99 = load i64, i64* %5, align 8
  %100 = load i64, i64* %6, align 8
  %101 = sub nsw i64 %99, %100
  %102 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %103 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %102, i32 0, i32 1
  store i64 %101, i64* %103, align 8
  %104 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %105 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %108 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = sub nsw i64 %109, %106
  store i64 %110, i64* %108, align 8
  %111 = load i64, i64* %7, align 8
  %112 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %113 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %112, i32 0, i32 5
  store i64 %111, i64* %113, align 8
  br label %140

114:                                              ; preds = %90
  %115 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %116 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* %6, align 8
  %119 = add nsw i64 %118, %117
  store i64 %119, i64* %6, align 8
  %120 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %121 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %120, i32 0, i32 0
  store i64 0, i64* %121, align 8
  %122 = load i64, i64* %6, align 8
  %123 = load i64, i64* %5, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %131

125:                                              ; preds = %114
  %126 = load i64, i64* %7, align 8
  %127 = add nsw i64 %126, 1
  store i64 %127, i64* %7, align 8
  %128 = load i64, i64* %7, align 8
  %129 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %130 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %129, i32 0, i32 5
  store i64 %128, i64* %130, align 8
  br label %140

131:                                              ; preds = %114
  %132 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %133 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %132, i32 0, i32 4
  %134 = load %struct.TYPE_2__*, %struct.TYPE_2__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 2
  %136 = load i8* (%struct.seq_file*, i8*, i64*)*, i8* (%struct.seq_file*, i8*, i64*)** %135, align 8
  %137 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %138 = load i8*, i8** %9, align 8
  %139 = call i8* %136(%struct.seq_file* %137, i8* %138, i64* %7)
  store i8* %139, i8** %9, align 8
  br label %51

140:                                              ; preds = %125, %98, %72, %60, %51
  %141 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %142 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %141, i32 0, i32 4
  %143 = load %struct.TYPE_2__*, %struct.TYPE_2__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 1
  %145 = load i32 (%struct.seq_file*, i8*)*, i32 (%struct.seq_file*, i8*)** %144, align 8
  %146 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %147 = load i8*, i8** %9, align 8
  %148 = call i32 %145(%struct.seq_file* %146, i8* %147)
  %149 = load i64, i64* %7, align 8
  %150 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %151 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %150, i32 0, i32 5
  store i64 %149, i64* %151, align 8
  %152 = load i32, i32* %8, align 4
  store i32 %152, i32* %3, align 4
  br label %186

153:                                              ; preds = %89
  %154 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %155 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %154, i32 0, i32 4
  %156 = load %struct.TYPE_2__*, %struct.TYPE_2__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i32 0, i32 1
  %158 = load i32 (%struct.seq_file*, i8*)*, i32 (%struct.seq_file*, i8*)** %157, align 8
  %159 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %160 = load i8*, i8** %9, align 8
  %161 = call i32 %158(%struct.seq_file* %159, i8* %160)
  %162 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %163 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %162, i32 0, i32 3
  %164 = load i8*, i8** %163, align 8
  %165 = call i32 @kfree(i8* %164)
  %166 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %167 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 8
  %169 = shl i32 %168, 1
  store i32 %169, i32* %167, align 8
  %170 = load i32, i32* @GFP_KERNEL, align 4
  %171 = call i8* @kmalloc(i32 %169, i32 %170)
  %172 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %173 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %172, i32 0, i32 3
  store i8* %171, i8** %173, align 8
  %174 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %175 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %174, i32 0, i32 3
  %176 = load i8*, i8** %175, align 8
  %177 = icmp ne i8* %176, null
  br i1 %177, label %181, label %178

178:                                              ; preds = %153
  %179 = load i32, i32* @ENOMEM, align 4
  %180 = sub nsw i32 0, %179
  br label %184

181:                                              ; preds = %153
  %182 = load i32, i32* @EAGAIN, align 4
  %183 = sub nsw i32 0, %182
  br label %184

184:                                              ; preds = %181, %178
  %185 = phi i32 [ %180, %178 ], [ %183, %181 ]
  store i32 %185, i32* %3, align 4
  br label %186

186:                                              ; preds = %184, %140, %39, %18
  %187 = load i32, i32* %3, align 4
  ret i32 %187
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
