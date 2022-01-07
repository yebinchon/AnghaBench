; ModuleID = '/home/carl/AnghaBench/freebsd/bin/sh/extr_parser.c_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/sh/extr_parser.c_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.node = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32*, %union.node* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { %union.node* }

@CHKNL = common dso_local global i32 0, align 4
@CHKKWD = common dso_local global i32 0, align 4
@CHKALIAS = common dso_local global i32 0, align 4
@checkkwd = common dso_local global i32 0, align 4
@tokendlist = common dso_local global i64* null, align 8
@NPIPE = common dso_local global i64 0, align 8
@NREDIR = common dso_local global i64 0, align 8
@NBACKGND = common dso_local global i8* null, align 8
@NSEMI = common dso_local global i32 0, align 4
@tokpushback = common dso_local global i32 0, align 4
@heredoclist = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%union.node* (i32)* @list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %union.node* @list(i32 %0) #0 {
  %2 = alloca %union.node*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %union.node*, align 8
  %5 = alloca %union.node*, align 8
  %6 = alloca %union.node*, align 8
  %7 = alloca %union.node*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* @CHKNL, align 4
  %10 = load i32, i32* @CHKKWD, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @CHKALIAS, align 4
  %13 = or i32 %11, %12
  store i32 %13, i32* @checkkwd, align 4
  %14 = load i32, i32* %3, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %1
  %17 = load i64*, i64** @tokendlist, align 8
  %18 = call i64 (...) @peektoken()
  %19 = getelementptr inbounds i64, i64* %17, i64 %18
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  store %union.node* null, %union.node** %2, align 8
  br label %164

23:                                               ; preds = %16, %1
  store %union.node* null, %union.node** %5, align 8
  store %union.node* null, %union.node** %4, align 8
  br label %24

24:                                               ; preds = %163, %23
  %25 = call %union.node* (...) @andor()
  store %union.node* %25, %union.node** %6, align 8
  %26 = call i32 (...) @readtoken()
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp eq i32 %27, 131
  br i1 %28, label %29, label %73

29:                                               ; preds = %24
  %30 = load %union.node*, %union.node** %6, align 8
  %31 = icmp ne %union.node* %30, null
  br i1 %31, label %32, label %42

32:                                               ; preds = %29
  %33 = load %union.node*, %union.node** %6, align 8
  %34 = bitcast %union.node* %33 to i64*
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @NPIPE, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %32
  %39 = load %union.node*, %union.node** %6, align 8
  %40 = bitcast %union.node* %39 to %struct.TYPE_4__*
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  store i32 1, i32* %41, align 8
  br label %72

42:                                               ; preds = %32, %29
  %43 = load %union.node*, %union.node** %6, align 8
  %44 = icmp ne %union.node* %43, null
  br i1 %44, label %45, label %56

45:                                               ; preds = %42
  %46 = load %union.node*, %union.node** %6, align 8
  %47 = bitcast %union.node* %46 to i64*
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @NREDIR, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %45
  %52 = load i8*, i8** @NBACKGND, align 8
  %53 = ptrtoint i8* %52 to i64
  %54 = load %union.node*, %union.node** %6, align 8
  %55 = bitcast %union.node* %54 to i64*
  store i64 %53, i64* %55, align 8
  br label %71

56:                                               ; preds = %45, %42
  %57 = call i64 @stalloc(i32 4)
  %58 = inttoptr i64 %57 to %union.node*
  store %union.node* %58, %union.node** %7, align 8
  %59 = load i8*, i8** @NBACKGND, align 8
  %60 = ptrtoint i8* %59 to i64
  %61 = load %union.node*, %union.node** %7, align 8
  %62 = bitcast %union.node* %61 to i64*
  store i64 %60, i64* %62, align 8
  %63 = load %union.node*, %union.node** %6, align 8
  %64 = load %union.node*, %union.node** %7, align 8
  %65 = bitcast %union.node* %64 to %struct.TYPE_5__*
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 1
  store %union.node* %63, %union.node** %66, align 8
  %67 = load %union.node*, %union.node** %7, align 8
  %68 = bitcast %union.node* %67 to %struct.TYPE_5__*
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  store i32* null, i32** %69, align 8
  %70 = load %union.node*, %union.node** %7, align 8
  store %union.node* %70, %union.node** %6, align 8
  br label %71

71:                                               ; preds = %56, %51
  br label %72

72:                                               ; preds = %71, %38
  br label %73

73:                                               ; preds = %72, %24
  %74 = load %union.node*, %union.node** %4, align 8
  %75 = icmp eq %union.node* %74, null
  br i1 %75, label %76, label %78

76:                                               ; preds = %73
  %77 = load %union.node*, %union.node** %6, align 8
  store %union.node* %77, %union.node** %4, align 8
  br label %101

78:                                               ; preds = %73
  %79 = load %union.node*, %union.node** %5, align 8
  %80 = icmp eq %union.node* %79, null
  br i1 %80, label %81, label %87

81:                                               ; preds = %78
  %82 = load i32, i32* @NSEMI, align 4
  %83 = load %union.node*, %union.node** %4, align 8
  %84 = load %union.node*, %union.node** %6, align 8
  %85 = call %union.node* @makebinary(i32 %82, %union.node* %83, %union.node* %84)
  store %union.node* %85, %union.node** %5, align 8
  %86 = load %union.node*, %union.node** %5, align 8
  store %union.node* %86, %union.node** %4, align 8
  br label %100

87:                                               ; preds = %78
  %88 = load i32, i32* @NSEMI, align 4
  %89 = load %union.node*, %union.node** %5, align 8
  %90 = bitcast %union.node* %89 to %struct.TYPE_6__*
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = load %union.node*, %union.node** %91, align 8
  %93 = load %union.node*, %union.node** %6, align 8
  %94 = call %union.node* @makebinary(i32 %88, %union.node* %92, %union.node* %93)
  store %union.node* %94, %union.node** %7, align 8
  %95 = load %union.node*, %union.node** %7, align 8
  %96 = load %union.node*, %union.node** %5, align 8
  %97 = bitcast %union.node* %96 to %struct.TYPE_6__*
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  store %union.node* %95, %union.node** %98, align 8
  %99 = load %union.node*, %union.node** %7, align 8
  store %union.node* %99, %union.node** %5, align 8
  br label %100

100:                                              ; preds = %87, %81
  br label %101

101:                                              ; preds = %100, %76
  %102 = load i32, i32* %8, align 4
  switch i32 %102, label %154 [
    i32 131, label %103
    i32 128, label %103
    i32 129, label %105
    i32 130, label %145
  ]

103:                                              ; preds = %101, %101
  %104 = call i32 (...) @readtoken()
  store i32 %104, i32* %8, align 4
  br label %105

105:                                              ; preds = %101, %103
  %106 = load i32, i32* %8, align 4
  %107 = icmp eq i32 %106, 129
  br i1 %107, label %108, label %115

108:                                              ; preds = %105
  %109 = call i32 (...) @parseheredoc()
  %110 = load i32, i32* %3, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %108
  %113 = load %union.node*, %union.node** %4, align 8
  store %union.node* %113, %union.node** %2, align 8
  br label %164

114:                                              ; preds = %108
  br label %128

115:                                              ; preds = %105
  %116 = load i32, i32* %8, align 4
  %117 = icmp eq i32 %116, 130
  br i1 %117, label %118, label %124

118:                                              ; preds = %115
  %119 = load i32, i32* %3, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %118
  %122 = call i32 (...) @parseheredoc()
  %123 = load %union.node*, %union.node** %4, align 8
  store %union.node* %123, %union.node** %2, align 8
  br label %164

124:                                              ; preds = %118, %115
  %125 = load i32, i32* @tokpushback, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* @tokpushback, align 4
  br label %127

127:                                              ; preds = %124
  br label %128

128:                                              ; preds = %127, %114
  %129 = load i32, i32* @CHKNL, align 4
  %130 = load i32, i32* @CHKKWD, align 4
  %131 = or i32 %129, %130
  %132 = load i32, i32* @CHKALIAS, align 4
  %133 = or i32 %131, %132
  store i32 %133, i32* @checkkwd, align 4
  %134 = load i32, i32* %3, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %144, label %136

136:                                              ; preds = %128
  %137 = load i64*, i64** @tokendlist, align 8
  %138 = call i64 (...) @peektoken()
  %139 = getelementptr inbounds i64, i64* %137, i64 %138
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %136
  %143 = load %union.node*, %union.node** %4, align 8
  store %union.node* %143, %union.node** %2, align 8
  br label %164

144:                                              ; preds = %136, %128
  br label %163

145:                                              ; preds = %101
  %146 = load i32, i32* @heredoclist, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %145
  %149 = call i32 (...) @parseheredoc()
  br label %152

150:                                              ; preds = %145
  %151 = call i32 (...) @pungetc()
  br label %152

152:                                              ; preds = %150, %148
  %153 = load %union.node*, %union.node** %4, align 8
  store %union.node* %153, %union.node** %2, align 8
  br label %164

154:                                              ; preds = %101
  %155 = load i32, i32* %3, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %154
  %158 = call i32 @synexpect(i32 -1)
  br label %159

159:                                              ; preds = %157, %154
  %160 = load i32, i32* @tokpushback, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* @tokpushback, align 4
  %162 = load %union.node*, %union.node** %4, align 8
  store %union.node* %162, %union.node** %2, align 8
  br label %164

163:                                              ; preds = %144
  br label %24

164:                                              ; preds = %159, %152, %142, %121, %112, %22
  %165 = load %union.node*, %union.node** %2, align 8
  ret %union.node* %165
}

declare dso_local i64 @peektoken(...) #1

declare dso_local %union.node* @andor(...) #1

declare dso_local i32 @readtoken(...) #1

declare dso_local i64 @stalloc(i32) #1

declare dso_local %union.node* @makebinary(i32, %union.node*, %union.node*) #1

declare dso_local i32 @parseheredoc(...) #1

declare dso_local i32 @pungetc(...) #1

declare dso_local i32 @synexpect(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
