; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_struct-equiv.c_resolve_input_conflict.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_struct-equiv.c_resolve_input_conflict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.equiv_info = type { i32, i8**, i8**, i32, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@STRUCT_EQUIV_MAX_LOCAL = common dso_local global i32 0, align 4
@dump_file = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"Resolved input conflict, %d %s.\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"swap\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"swaps\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.equiv_info*)* @resolve_input_conflict to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @resolve_input_conflict(%struct.equiv_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.equiv_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store %struct.equiv_info* %0, %struct.equiv_info** %3, align 8
  store i32 0, i32* %7, align 4
  %14 = load i32, i32* @STRUCT_EQUIV_MAX_LOCAL, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %8, align 8
  %17 = alloca i8*, i64 %15, align 16
  store i64 %15, i64* %9, align 8
  %18 = load i32, i32* @STRUCT_EQUIV_MAX_LOCAL, align 4
  %19 = zext i32 %18 to i64
  %20 = alloca i8*, i64 %19, align 16
  store i64 %19, i64* %10, align 8
  %21 = load %struct.equiv_info*, %struct.equiv_info** %3, align 8
  %22 = call i32 @find_dying_inputs(%struct.equiv_info* %21)
  %23 = load %struct.equiv_info*, %struct.equiv_info** %3, align 8
  %24 = getelementptr inbounds %struct.equiv_info, %struct.equiv_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp sle i32 %25, 1
  br i1 %26, label %27, label %28

27:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %197

28:                                               ; preds = %1
  %29 = load %struct.equiv_info*, %struct.equiv_info** %3, align 8
  %30 = getelementptr inbounds %struct.equiv_info, %struct.equiv_info* %29, i32 0, i32 1
  %31 = load i8**, i8*** %30, align 8
  %32 = mul nuw i64 8, %15
  %33 = trunc i64 %32 to i32
  %34 = call i32 @memcpy(i8** %17, i8** %31, i32 %33)
  %35 = load %struct.equiv_info*, %struct.equiv_info** %3, align 8
  %36 = getelementptr inbounds %struct.equiv_info, %struct.equiv_info* %35, i32 0, i32 2
  %37 = load i8**, i8*** %36, align 8
  %38 = mul nuw i64 8, %19
  %39 = trunc i64 %38 to i32
  %40 = call i32 @memcpy(i8** %20, i8** %37, i32 %39)
  %41 = load %struct.equiv_info*, %struct.equiv_info** %3, align 8
  %42 = getelementptr inbounds %struct.equiv_info, %struct.equiv_info* %41, i32 0, i32 5
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = sub nsw i32 %44, 1
  store i32 %45, i32* %6, align 4
  store i32 0, i32* %4, align 4
  br label %46

46:                                               ; preds = %177, %28
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp sle i32 %47, %48
  br i1 %49, label %50, label %180

50:                                               ; preds = %46
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* %4, align 4
  %53 = sub nsw i32 %51, %52
  store i32 %53, i32* %12, align 4
  %54 = load %struct.equiv_info*, %struct.equiv_info** %3, align 8
  %55 = getelementptr inbounds %struct.equiv_info, %struct.equiv_info* %54, i32 0, i32 4
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %4, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %50
  br label %177

63:                                               ; preds = %50
  %64 = load i32, i32* %4, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %5, align 4
  br label %66

66:                                               ; preds = %173, %63
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* %6, align 4
  %69 = icmp sle i32 %67, %68
  br i1 %69, label %70, label %176

70:                                               ; preds = %66
  %71 = load %struct.equiv_info*, %struct.equiv_info** %3, align 8
  %72 = getelementptr inbounds %struct.equiv_info, %struct.equiv_info* %71, i32 0, i32 4
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %5, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %70
  br label %173

80:                                               ; preds = %70
  %81 = load %struct.equiv_info*, %struct.equiv_info** %3, align 8
  %82 = getelementptr inbounds %struct.equiv_info, %struct.equiv_info* %81, i32 0, i32 1
  %83 = load i8**, i8*** %82, align 8
  %84 = load i32, i32* %4, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8*, i8** %83, i64 %85
  %87 = load i8*, i8** %86, align 8
  %88 = load %struct.equiv_info*, %struct.equiv_info** %3, align 8
  %89 = getelementptr inbounds %struct.equiv_info, %struct.equiv_info* %88, i32 0, i32 2
  %90 = load i8**, i8*** %89, align 8
  %91 = load i32, i32* %5, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8*, i8** %90, i64 %92
  %94 = load i8*, i8** %93, align 8
  %95 = call i32 @reg_overlap_mentioned_p(i8* %87, i8* %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %80
  br label %173

98:                                               ; preds = %80
  %99 = load i32, i32* %12, align 4
  %100 = add nsw i32 %99, -1
  store i32 %100, i32* %12, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %115

102:                                              ; preds = %98
  %103 = load %struct.equiv_info*, %struct.equiv_info** %3, align 8
  %104 = getelementptr inbounds %struct.equiv_info, %struct.equiv_info* %103, i32 0, i32 1
  %105 = load i8**, i8*** %104, align 8
  %106 = mul nuw i64 8, %15
  %107 = trunc i64 %106 to i32
  %108 = call i32 @memcpy(i8** %105, i8** %17, i32 %107)
  %109 = load %struct.equiv_info*, %struct.equiv_info** %3, align 8
  %110 = getelementptr inbounds %struct.equiv_info, %struct.equiv_info* %109, i32 0, i32 2
  %111 = load i8**, i8*** %110, align 8
  %112 = mul nuw i64 8, %19
  %113 = trunc i64 %112 to i32
  %114 = call i32 @memcpy(i8** %111, i8** %20, i32 %113)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %197

115:                                              ; preds = %98
  %116 = load i32, i32* %7, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %7, align 4
  %118 = load %struct.equiv_info*, %struct.equiv_info** %3, align 8
  %119 = getelementptr inbounds %struct.equiv_info, %struct.equiv_info* %118, i32 0, i32 1
  %120 = load i8**, i8*** %119, align 8
  %121 = load i32, i32* %4, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i8*, i8** %120, i64 %122
  %124 = load i8*, i8** %123, align 8
  store i8* %124, i8** %13, align 8
  %125 = load %struct.equiv_info*, %struct.equiv_info** %3, align 8
  %126 = getelementptr inbounds %struct.equiv_info, %struct.equiv_info* %125, i32 0, i32 1
  %127 = load i8**, i8*** %126, align 8
  %128 = load i32, i32* %5, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i8*, i8** %127, i64 %129
  %131 = load i8*, i8** %130, align 8
  %132 = load %struct.equiv_info*, %struct.equiv_info** %3, align 8
  %133 = getelementptr inbounds %struct.equiv_info, %struct.equiv_info* %132, i32 0, i32 1
  %134 = load i8**, i8*** %133, align 8
  %135 = load i32, i32* %4, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i8*, i8** %134, i64 %136
  store i8* %131, i8** %137, align 8
  %138 = load i8*, i8** %13, align 8
  %139 = load %struct.equiv_info*, %struct.equiv_info** %3, align 8
  %140 = getelementptr inbounds %struct.equiv_info, %struct.equiv_info* %139, i32 0, i32 1
  %141 = load i8**, i8*** %140, align 8
  %142 = load i32, i32* %5, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i8*, i8** %141, i64 %143
  store i8* %138, i8** %144, align 8
  %145 = load %struct.equiv_info*, %struct.equiv_info** %3, align 8
  %146 = getelementptr inbounds %struct.equiv_info, %struct.equiv_info* %145, i32 0, i32 2
  %147 = load i8**, i8*** %146, align 8
  %148 = load i32, i32* %4, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i8*, i8** %147, i64 %149
  %151 = load i8*, i8** %150, align 8
  store i8* %151, i8** %13, align 8
  %152 = load %struct.equiv_info*, %struct.equiv_info** %3, align 8
  %153 = getelementptr inbounds %struct.equiv_info, %struct.equiv_info* %152, i32 0, i32 2
  %154 = load i8**, i8*** %153, align 8
  %155 = load i32, i32* %5, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i8*, i8** %154, i64 %156
  %158 = load i8*, i8** %157, align 8
  %159 = load %struct.equiv_info*, %struct.equiv_info** %3, align 8
  %160 = getelementptr inbounds %struct.equiv_info, %struct.equiv_info* %159, i32 0, i32 2
  %161 = load i8**, i8*** %160, align 8
  %162 = load i32, i32* %4, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i8*, i8** %161, i64 %163
  store i8* %158, i8** %164, align 8
  %165 = load i8*, i8** %13, align 8
  %166 = load %struct.equiv_info*, %struct.equiv_info** %3, align 8
  %167 = getelementptr inbounds %struct.equiv_info, %struct.equiv_info* %166, i32 0, i32 2
  %168 = load i8**, i8*** %167, align 8
  %169 = load i32, i32* %5, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i8*, i8** %168, i64 %170
  store i8* %165, i8** %171, align 8
  %172 = load i32, i32* %4, align 4
  store i32 %172, i32* %5, align 4
  br label %173

173:                                              ; preds = %115, %97, %79
  %174 = load i32, i32* %5, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %5, align 4
  br label %66

176:                                              ; preds = %66
  br label %177

177:                                              ; preds = %176, %62
  %178 = load i32, i32* %4, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %4, align 4
  br label %46

180:                                              ; preds = %46
  %181 = load %struct.equiv_info*, %struct.equiv_info** %3, align 8
  %182 = getelementptr inbounds %struct.equiv_info, %struct.equiv_info* %181, i32 0, i32 3
  store i32 1, i32* %182, align 8
  %183 = load i64, i64* @dump_file, align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %196

185:                                              ; preds = %180
  %186 = load i32, i32* %7, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %196

188:                                              ; preds = %185
  %189 = load i64, i64* @dump_file, align 8
  %190 = load i32, i32* %7, align 4
  %191 = load i32, i32* %7, align 4
  %192 = icmp eq i32 %191, 1
  %193 = zext i1 %192 to i64
  %194 = select i1 %192, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %195 = call i32 @fprintf(i64 %189, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %190, i8* %194)
  br label %196

196:                                              ; preds = %188, %185, %180
  store i32 1, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %197

197:                                              ; preds = %196, %102, %27
  %198 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %198)
  %199 = load i32, i32* %2, align 4
  ret i32 %199
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @find_dying_inputs(%struct.equiv_info*) #2

declare dso_local i32 @memcpy(i8**, i8**, i32) #2

declare dso_local i32 @reg_overlap_mentioned_p(i8*, i8*) #2

declare dso_local i32 @fprintf(i64, i8*, i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
