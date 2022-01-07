; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_annotate.c_mov__parse.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_annotate.c_mov__parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ins_operands = type { i8*, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32*, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ins_operands*)* @mov__parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mov__parse(%struct.ins_operands* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ins_operands*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8, align 1
  store %struct.ins_operands* %0, %struct.ins_operands** %3, align 8
  %8 = load %struct.ins_operands*, %struct.ins_operands** %3, align 8
  %9 = getelementptr inbounds %struct.ins_operands, %struct.ins_operands* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  %11 = call i8* @strchr(i8* %10, i8 signext 44)
  store i8* %11, i8** %4, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %129

15:                                               ; preds = %1
  %16 = load i8*, i8** %4, align 8
  store i8 0, i8* %16, align 1
  %17 = load %struct.ins_operands*, %struct.ins_operands** %3, align 8
  %18 = getelementptr inbounds %struct.ins_operands, %struct.ins_operands* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = call i8* @strdup(i8* %19)
  %21 = bitcast i8* %20 to i32*
  %22 = load %struct.ins_operands*, %struct.ins_operands** %3, align 8
  %23 = getelementptr inbounds %struct.ins_operands, %struct.ins_operands* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  store i32* %21, i32** %24, align 8
  %25 = load i8*, i8** %4, align 8
  store i8 44, i8* %25, align 1
  %26 = load %struct.ins_operands*, %struct.ins_operands** %3, align 8
  %27 = getelementptr inbounds %struct.ins_operands, %struct.ins_operands* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %15
  store i32 -1, i32* %2, align 4
  br label %129

32:                                               ; preds = %15
  %33 = load i8*, i8** %4, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** %4, align 8
  store i8* %34, i8** %5, align 8
  br label %35

35:                                               ; preds = %50, %32
  %36 = load i8*, i8** %4, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 0
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %35
  %42 = load i8*, i8** %4, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 0
  %44 = load i8, i8* %43, align 1
  %45 = call i64 @isspace(i8 signext %44)
  %46 = icmp ne i64 %45, 0
  %47 = xor i1 %46, true
  br label %48

48:                                               ; preds = %41, %35
  %49 = phi i1 [ false, %35 ], [ %47, %41 ]
  br i1 %49, label %50, label %53

50:                                               ; preds = %48
  %51 = load i8*, i8** %4, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %4, align 8
  br label %35

53:                                               ; preds = %48
  %54 = load i8*, i8** %4, align 8
  %55 = load i8, i8* %54, align 1
  store i8 %55, i8* %7, align 1
  %56 = load i8*, i8** %4, align 8
  store i8 0, i8* %56, align 1
  %57 = load i8*, i8** %5, align 8
  %58 = call i8* @strdup(i8* %57)
  %59 = bitcast i8* %58 to i32*
  %60 = load %struct.ins_operands*, %struct.ins_operands** %3, align 8
  %61 = getelementptr inbounds %struct.ins_operands, %struct.ins_operands* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 2
  store i32* %59, i32** %62, align 8
  %63 = load i8, i8* %7, align 1
  %64 = load i8*, i8** %4, align 8
  store i8 %63, i8* %64, align 1
  %65 = load %struct.ins_operands*, %struct.ins_operands** %3, align 8
  %66 = getelementptr inbounds %struct.ins_operands, %struct.ins_operands* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 2
  %68 = load i32*, i32** %67, align 8
  %69 = icmp eq i32* %68, null
  br i1 %69, label %70, label %71

70:                                               ; preds = %53
  br label %120

71:                                               ; preds = %53
  %72 = load i8*, i8** %4, align 8
  %73 = call i8* @strchr(i8* %72, i8 signext 35)
  store i8* %73, i8** %6, align 8
  %74 = load i8*, i8** %6, align 8
  %75 = icmp eq i8* %74, null
  br i1 %75, label %76, label %77

76:                                               ; preds = %71
  store i32 0, i32* %2, align 4
  br label %129

77:                                               ; preds = %71
  br label %78

78:                                               ; preds = %92, %77
  %79 = load i8*, i8** %6, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 0
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %78
  %85 = load i8*, i8** %6, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 0
  %87 = load i8, i8* %86, align 1
  %88 = call i64 @isspace(i8 signext %87)
  %89 = icmp ne i64 %88, 0
  br label %90

90:                                               ; preds = %84, %78
  %91 = phi i1 [ false, %78 ], [ %89, %84 ]
  br i1 %91, label %92, label %95

92:                                               ; preds = %90
  %93 = load i8*, i8** %6, align 8
  %94 = getelementptr inbounds i8, i8* %93, i32 1
  store i8* %94, i8** %6, align 8
  br label %78

95:                                               ; preds = %90
  %96 = load %struct.ins_operands*, %struct.ins_operands** %3, align 8
  %97 = getelementptr inbounds %struct.ins_operands, %struct.ins_operands* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = load i8*, i8** %6, align 8
  %101 = load %struct.ins_operands*, %struct.ins_operands** %3, align 8
  %102 = getelementptr inbounds %struct.ins_operands, %struct.ins_operands* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 2
  %104 = load %struct.ins_operands*, %struct.ins_operands** %3, align 8
  %105 = getelementptr inbounds %struct.ins_operands, %struct.ins_operands* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 1
  %107 = call i32 @comment__symbol(i32* %99, i8* %100, i32* %103, i32* %106)
  %108 = load %struct.ins_operands*, %struct.ins_operands** %3, align 8
  %109 = getelementptr inbounds %struct.ins_operands, %struct.ins_operands* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 2
  %111 = load i32*, i32** %110, align 8
  %112 = load i8*, i8** %6, align 8
  %113 = load %struct.ins_operands*, %struct.ins_operands** %3, align 8
  %114 = getelementptr inbounds %struct.ins_operands, %struct.ins_operands* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 1
  %116 = load %struct.ins_operands*, %struct.ins_operands** %3, align 8
  %117 = getelementptr inbounds %struct.ins_operands, %struct.ins_operands* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 0
  %119 = call i32 @comment__symbol(i32* %111, i8* %112, i32* %115, i32* %118)
  store i32 0, i32* %2, align 4
  br label %129

120:                                              ; preds = %70
  %121 = load %struct.ins_operands*, %struct.ins_operands** %3, align 8
  %122 = getelementptr inbounds %struct.ins_operands, %struct.ins_operands* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  %125 = call i32 @free(i32* %124)
  %126 = load %struct.ins_operands*, %struct.ins_operands** %3, align 8
  %127 = getelementptr inbounds %struct.ins_operands, %struct.ins_operands* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 0
  store i32* null, i32** %128, align 8
  store i32 -1, i32* %2, align 4
  br label %129

129:                                              ; preds = %120, %95, %76, %31, %14
  %130 = load i32, i32* %2, align 4
  ret i32 %130
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i32 @comment__symbol(i32*, i8*, i32*, i32*) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
