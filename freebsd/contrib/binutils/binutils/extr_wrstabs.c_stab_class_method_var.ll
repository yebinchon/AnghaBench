; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_wrstabs.c_stab_class_method_var.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_wrstabs.c_stab_class_method_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stab_write_handle = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i8* }

@.str = private unnamed_addr constant [13 x i8] c"%s:%s;%c%c%c\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"%ld;%s;\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stab_write_handle*, i8*, i32, i32, i32, i32, i64, i32)* @stab_class_method_var to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stab_class_method_var(%struct.stab_write_handle* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5, i64 %6, i32 %7) #0 {
  %9 = alloca %struct.stab_write_handle*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8, align 1
  %21 = alloca i8, align 1
  %22 = alloca i8, align 1
  store %struct.stab_write_handle* %0, %struct.stab_write_handle** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i64 %6, i64* %15, align 8
  store i32 %7, i32* %16, align 4
  store i8* null, i8** %19, align 8
  %23 = load %struct.stab_write_handle*, %struct.stab_write_handle** %9, align 8
  %24 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %17, align 4
  %28 = load %struct.stab_write_handle*, %struct.stab_write_handle** %9, align 8
  %29 = call i8* @stab_pop_type(%struct.stab_write_handle* %28)
  store i8* %29, i8** %18, align 8
  %30 = load i32, i32* %16, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %47

32:                                               ; preds = %8
  %33 = load i32, i32* %17, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %32
  %36 = load %struct.stab_write_handle*, %struct.stab_write_handle** %9, align 8
  %37 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br label %42

42:                                               ; preds = %35, %32
  %43 = phi i1 [ true, %32 ], [ %41, %35 ]
  %44 = zext i1 %43 to i32
  store i32 %44, i32* %17, align 4
  %45 = load %struct.stab_write_handle*, %struct.stab_write_handle** %9, align 8
  %46 = call i8* @stab_pop_type(%struct.stab_write_handle* %45)
  store i8* %46, i8** %19, align 8
  br label %47

47:                                               ; preds = %42, %8
  %48 = load %struct.stab_write_handle*, %struct.stab_write_handle** %9, align 8
  %49 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = icmp ne %struct.TYPE_2__* %50, null
  br i1 %51, label %52, label %59

52:                                               ; preds = %47
  %53 = load %struct.stab_write_handle*, %struct.stab_write_handle** %9, align 8
  %54 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i8*, i8** %56, align 8
  %58 = icmp ne i8* %57, null
  br label %59

59:                                               ; preds = %52, %47
  %60 = phi i1 [ false, %47 ], [ %58, %52 ]
  %61 = zext i1 %60 to i32
  %62 = call i32 @assert(i32 %61)
  %63 = load i32, i32* %11, align 4
  switch i32 %63, label %64 [
    i32 130, label %66
    i32 129, label %67
    i32 128, label %68
  ]

64:                                               ; preds = %59
  %65 = call i32 (...) @abort() #3
  unreachable

66:                                               ; preds = %59
  store i8 48, i8* %20, align 1
  br label %69

67:                                               ; preds = %59
  store i8 49, i8* %20, align 1
  br label %69

68:                                               ; preds = %59
  store i8 50, i8* %20, align 1
  br label %69

69:                                               ; preds = %68, %67, %66
  %70 = load i32, i32* %13, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %69
  %73 = load i32, i32* %14, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %72
  store i8 68, i8* %21, align 1
  br label %77

76:                                               ; preds = %72
  store i8 66, i8* %21, align 1
  br label %77

77:                                               ; preds = %76, %75
  br label %84

78:                                               ; preds = %69
  %79 = load i32, i32* %14, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %78
  store i8 67, i8* %21, align 1
  br label %83

82:                                               ; preds = %78
  store i8 65, i8* %21, align 1
  br label %83

83:                                               ; preds = %82, %81
  br label %84

84:                                               ; preds = %83, %77
  %85 = load i32, i32* %12, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %84
  store i8 63, i8* %22, align 1
  br label %94

88:                                               ; preds = %84
  %89 = load i32, i32* %16, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %88
  store i8 46, i8* %22, align 1
  br label %93

92:                                               ; preds = %88
  store i8 42, i8* %22, align 1
  br label %93

93:                                               ; preds = %92, %91
  br label %94

94:                                               ; preds = %93, %87
  %95 = load %struct.stab_write_handle*, %struct.stab_write_handle** %9, align 8
  %96 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %95, i32 0, i32 0
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 1
  %99 = load i8*, i8** %98, align 8
  %100 = load %struct.stab_write_handle*, %struct.stab_write_handle** %9, align 8
  %101 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %100, i32 0, i32 0
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 1
  %104 = load i8*, i8** %103, align 8
  %105 = call i32 @strlen(i8* %104)
  %106 = load i8*, i8** %18, align 8
  %107 = call i32 @strlen(i8* %106)
  %108 = add nsw i32 %105, %107
  %109 = load i8*, i8** %10, align 8
  %110 = call i32 @strlen(i8* %109)
  %111 = add nsw i32 %108, %110
  %112 = load i32, i32* %16, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %94
  %115 = load i8*, i8** %19, align 8
  %116 = call i32 @strlen(i8* %115)
  br label %118

117:                                              ; preds = %94
  br label %118

118:                                              ; preds = %117, %114
  %119 = phi i32 [ %116, %114 ], [ 0, %117 ]
  %120 = add nsw i32 %111, %119
  %121 = add nsw i32 %120, 40
  %122 = call i64 @xrealloc(i8* %99, i32 %121)
  %123 = inttoptr i64 %122 to i8*
  %124 = load %struct.stab_write_handle*, %struct.stab_write_handle** %9, align 8
  %125 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %124, i32 0, i32 0
  %126 = load %struct.TYPE_2__*, %struct.TYPE_2__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 1
  store i8* %123, i8** %127, align 8
  %128 = load %struct.stab_write_handle*, %struct.stab_write_handle** %9, align 8
  %129 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %128, i32 0, i32 0
  %130 = load %struct.TYPE_2__*, %struct.TYPE_2__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 1
  %132 = load i8*, i8** %131, align 8
  %133 = load %struct.stab_write_handle*, %struct.stab_write_handle** %9, align 8
  %134 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %133, i32 0, i32 0
  %135 = load %struct.TYPE_2__*, %struct.TYPE_2__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 1
  %137 = load i8*, i8** %136, align 8
  %138 = call i32 @strlen(i8* %137)
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i8, i8* %132, i64 %139
  %141 = load i8*, i8** %18, align 8
  %142 = load i8*, i8** %10, align 8
  %143 = load i8, i8* %20, align 1
  %144 = sext i8 %143 to i32
  %145 = load i8, i8* %21, align 1
  %146 = sext i8 %145 to i32
  %147 = load i8, i8* %22, align 1
  %148 = sext i8 %147 to i32
  %149 = call i32 (i8*, i8*, ...) @sprintf(i8* %140, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %141, i8* %142, i32 %144, i32 %146, i32 %148)
  %150 = load i8*, i8** %18, align 8
  %151 = call i32 @free(i8* %150)
  %152 = load i32, i32* %16, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %173

154:                                              ; preds = %118
  %155 = load %struct.stab_write_handle*, %struct.stab_write_handle** %9, align 8
  %156 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %155, i32 0, i32 0
  %157 = load %struct.TYPE_2__*, %struct.TYPE_2__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 1
  %159 = load i8*, i8** %158, align 8
  %160 = load %struct.stab_write_handle*, %struct.stab_write_handle** %9, align 8
  %161 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %160, i32 0, i32 0
  %162 = load %struct.TYPE_2__*, %struct.TYPE_2__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i32 0, i32 1
  %164 = load i8*, i8** %163, align 8
  %165 = call i32 @strlen(i8* %164)
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i8, i8* %159, i64 %166
  %168 = load i64, i64* %15, align 8
  %169 = load i8*, i8** %19, align 8
  %170 = call i32 (i8*, i8*, ...) @sprintf(i8* %167, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64 %168, i8* %169)
  %171 = load i8*, i8** %19, align 8
  %172 = call i32 @free(i8* %171)
  br label %173

173:                                              ; preds = %154, %118
  %174 = load i32, i32* %17, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %182

176:                                              ; preds = %173
  %177 = load i32, i32* @TRUE, align 4
  %178 = load %struct.stab_write_handle*, %struct.stab_write_handle** %9, align 8
  %179 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %178, i32 0, i32 0
  %180 = load %struct.TYPE_2__*, %struct.TYPE_2__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %180, i32 0, i32 0
  store i32 %177, i32* %181, align 8
  br label %182

182:                                              ; preds = %176, %173
  %183 = load i32, i32* @TRUE, align 4
  ret i32 %183
}

declare dso_local i8* @stab_pop_type(%struct.stab_write_handle*) #1

declare dso_local i32 @assert(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i64 @xrealloc(i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
