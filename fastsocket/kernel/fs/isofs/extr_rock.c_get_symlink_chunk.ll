; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/isofs/extr_rock.c_get_symlink_chunk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/isofs/extr_rock.c_get_symlink_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rock_ridge = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, %struct.SL_component }
%struct.SL_component = type { i32, i32, i32 }

@.str = private unnamed_addr constant [45 x i8] c"Symlink component flag not implemented (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, %struct.rock_ridge*, i8*)* @get_symlink_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_symlink_chunk(i8* %0, %struct.rock_ridge* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.rock_ridge*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.SL_component*, align 8
  %11 = alloca %struct.SL_component*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.rock_ridge* %1, %struct.rock_ridge** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load %struct.rock_ridge*, %struct.rock_ridge** %6, align 8
  %13 = getelementptr inbounds %struct.rock_ridge, %struct.rock_ridge* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = sub nsw i32 %14, 5
  store i32 %15, i32* %8, align 4
  %16 = load %struct.rock_ridge*, %struct.rock_ridge** %6, align 8
  %17 = getelementptr inbounds %struct.rock_ridge, %struct.rock_ridge* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  store %struct.SL_component* %19, %struct.SL_component** %11, align 8
  br label %20

20:                                               ; preds = %151, %3
  %21 = load i32, i32* %8, align 4
  %22 = icmp sgt i32 %21, 1
  br i1 %22, label %23, label %152

23:                                               ; preds = %20
  store i32 0, i32* %9, align 4
  %24 = load %struct.SL_component*, %struct.SL_component** %11, align 8
  %25 = getelementptr inbounds %struct.SL_component, %struct.SL_component* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, -2
  switch i32 %27, label %84 [
    i32 0, label %28
    i32 2, label %55
    i32 4, label %63
    i32 8, label %76
  ]

28:                                               ; preds = %23
  %29 = load %struct.SL_component*, %struct.SL_component** %11, align 8
  %30 = getelementptr inbounds %struct.SL_component, %struct.SL_component* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = sext i32 %31 to i64
  %33 = load i8*, i8** %7, align 8
  %34 = load i8*, i8** %5, align 8
  %35 = ptrtoint i8* %33 to i64
  %36 = ptrtoint i8* %34 to i64
  %37 = sub i64 %35, %36
  %38 = icmp sgt i64 %32, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %28
  store i8* null, i8** %4, align 8
  br label %154

40:                                               ; preds = %28
  %41 = load i8*, i8** %5, align 8
  %42 = load %struct.SL_component*, %struct.SL_component** %11, align 8
  %43 = getelementptr inbounds %struct.SL_component, %struct.SL_component* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.SL_component*, %struct.SL_component** %11, align 8
  %46 = getelementptr inbounds %struct.SL_component, %struct.SL_component* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @memcpy(i8* %41, i32 %44, i32 %47)
  %49 = load %struct.SL_component*, %struct.SL_component** %11, align 8
  %50 = getelementptr inbounds %struct.SL_component, %struct.SL_component* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i8*, i8** %5, align 8
  %53 = sext i32 %51 to i64
  %54 = getelementptr inbounds i8, i8* %52, i64 %53
  store i8* %54, i8** %5, align 8
  br label %89

55:                                               ; preds = %23
  %56 = load i8*, i8** %5, align 8
  %57 = load i8*, i8** %7, align 8
  %58 = icmp uge i8* %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  store i8* null, i8** %4, align 8
  br label %154

60:                                               ; preds = %55
  %61 = load i8*, i8** %5, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %5, align 8
  store i8 46, i8* %61, align 1
  br label %89

63:                                               ; preds = %23
  %64 = load i8*, i8** %7, align 8
  %65 = load i8*, i8** %5, align 8
  %66 = ptrtoint i8* %64 to i64
  %67 = ptrtoint i8* %65 to i64
  %68 = sub i64 %66, %67
  %69 = icmp sgt i64 2, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %63
  store i8* null, i8** %4, align 8
  br label %154

71:                                               ; preds = %63
  %72 = load i8*, i8** %5, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %73, i8** %5, align 8
  store i8 46, i8* %72, align 1
  %74 = load i8*, i8** %5, align 8
  %75 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %75, i8** %5, align 8
  store i8 46, i8* %74, align 1
  br label %89

76:                                               ; preds = %23
  %77 = load i8*, i8** %5, align 8
  %78 = load i8*, i8** %7, align 8
  %79 = icmp uge i8* %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %76
  store i8* null, i8** %4, align 8
  br label %154

81:                                               ; preds = %76
  store i32 1, i32* %9, align 4
  %82 = load i8*, i8** %5, align 8
  %83 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %83, i8** %5, align 8
  store i8 47, i8* %82, align 1
  br label %89

84:                                               ; preds = %23
  %85 = load %struct.SL_component*, %struct.SL_component** %11, align 8
  %86 = getelementptr inbounds %struct.SL_component, %struct.SL_component* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @printk(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %87)
  br label %89

89:                                               ; preds = %84, %81, %71, %60, %40
  %90 = load %struct.SL_component*, %struct.SL_component** %11, align 8
  %91 = getelementptr inbounds %struct.SL_component, %struct.SL_component* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = add nsw i32 %92, 2
  %94 = load i32, i32* %8, align 4
  %95 = sub nsw i32 %94, %93
  store i32 %95, i32* %8, align 4
  %96 = load %struct.SL_component*, %struct.SL_component** %11, align 8
  store %struct.SL_component* %96, %struct.SL_component** %10, align 8
  %97 = load %struct.SL_component*, %struct.SL_component** %11, align 8
  %98 = bitcast %struct.SL_component* %97 to i8*
  %99 = load %struct.SL_component*, %struct.SL_component** %11, align 8
  %100 = getelementptr inbounds %struct.SL_component, %struct.SL_component* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8, i8* %98, i64 %102
  %104 = getelementptr inbounds i8, i8* %103, i64 2
  %105 = bitcast i8* %104 to %struct.SL_component*
  store %struct.SL_component* %105, %struct.SL_component** %11, align 8
  %106 = load i32, i32* %8, align 4
  %107 = icmp slt i32 %106, 2
  br i1 %107, label %108, label %134

108:                                              ; preds = %89
  %109 = load i32, i32* %9, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %133, label %111

111:                                              ; preds = %108
  %112 = load %struct.rock_ridge*, %struct.rock_ridge** %6, align 8
  %113 = getelementptr inbounds %struct.rock_ridge, %struct.rock_ridge* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = and i32 %116, 1
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %133

119:                                              ; preds = %111
  %120 = load %struct.SL_component*, %struct.SL_component** %10, align 8
  %121 = getelementptr inbounds %struct.SL_component, %struct.SL_component* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = and i32 %122, 1
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %133, label %125

125:                                              ; preds = %119
  %126 = load i8*, i8** %5, align 8
  %127 = load i8*, i8** %7, align 8
  %128 = icmp uge i8* %126, %127
  br i1 %128, label %129, label %130

129:                                              ; preds = %125
  store i8* null, i8** %4, align 8
  br label %154

130:                                              ; preds = %125
  %131 = load i8*, i8** %5, align 8
  %132 = getelementptr inbounds i8, i8* %131, i32 1
  store i8* %132, i8** %5, align 8
  store i8 47, i8* %131, align 1
  br label %133

133:                                              ; preds = %130, %119, %111, %108
  br label %152

134:                                              ; preds = %89
  %135 = load i32, i32* %9, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %151, label %137

137:                                              ; preds = %134
  %138 = load %struct.SL_component*, %struct.SL_component** %10, align 8
  %139 = getelementptr inbounds %struct.SL_component, %struct.SL_component* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = and i32 %140, 1
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %151, label %143

143:                                              ; preds = %137
  %144 = load i8*, i8** %5, align 8
  %145 = load i8*, i8** %7, align 8
  %146 = icmp uge i8* %144, %145
  br i1 %146, label %147, label %148

147:                                              ; preds = %143
  store i8* null, i8** %4, align 8
  br label %154

148:                                              ; preds = %143
  %149 = load i8*, i8** %5, align 8
  %150 = getelementptr inbounds i8, i8* %149, i32 1
  store i8* %150, i8** %5, align 8
  store i8 47, i8* %149, align 1
  br label %151

151:                                              ; preds = %148, %137, %134
  br label %20

152:                                              ; preds = %133, %20
  %153 = load i8*, i8** %5, align 8
  store i8* %153, i8** %4, align 8
  br label %154

154:                                              ; preds = %152, %147, %129, %80, %70, %59, %39
  %155 = load i8*, i8** %4, align 8
  ret i8* %155
}

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @printk(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
