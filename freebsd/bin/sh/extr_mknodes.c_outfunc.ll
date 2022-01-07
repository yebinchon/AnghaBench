; ModuleID = '/home/carl/AnghaBench/freebsd/bin/sh/extr_mknodes.c_outfunc.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/sh/extr_mknodes.c_outfunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.str = type { i32, i8*, %struct.field* }
%struct.field = type { i32, i8* }

@.str = private unnamed_addr constant [22 x i8] c"      if (n == NULL)\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"\09    return;\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"\09    return NULL;\0A\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"      result->blocksize += nodesize[n->type];\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"      new = state->block;\0A\00", align 1
@.str.5 = private unnamed_addr constant [64 x i8] c"      state->block = (char *)state->block + nodesize[n->type];\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"      switch (n->type) {\0A\00", align 1
@str = common dso_local global %struct.str* null, align 8
@nstr = common dso_local global i64 0, align 8
@ntypes = common dso_local global i32 0, align 4
@nodestr = common dso_local global %struct.str** null, align 8
@.str.7 = private unnamed_addr constant [16 x i8] c"      case %s:\0A\00", align 1
@nodename = common dso_local global i8** null, align 8
@.str.8 = private unnamed_addr constant [29 x i8] c"calcsize(n->%s.%s, result);\0A\00", align 1
@.str.9 = private unnamed_addr constant [41 x i8] c"new->%s.%s = copynode(n->%s.%s, state);\0A\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"sizenodelist(n->%s.%s, result);\0A\00", align 1
@.str.11 = private unnamed_addr constant [45 x i8] c"new->%s.%s = copynodelist(n->%s.%s, state);\0A\00", align 1
@.str.12 = private unnamed_addr constant [45 x i8] c"result->stringsize += strlen(n->%s.%s) + 1;\0A\00", align 1
@.str.13 = private unnamed_addr constant [44 x i8] c"new->%s.%s = nodesavestr(n->%s.%s, state);\0A\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"new->%s.%s = n->%s.%s;\0A\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"break;\0A\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"      };\0A\00", align 1
@.str.17 = private unnamed_addr constant [28 x i8] c"      new->type = n->type;\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @outfunc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @outfunc(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.str*, align 8
  %6 = alloca %struct.field*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32*, i32** %3, align 8
  %9 = call i32 @fputs(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32* %8)
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @fputs(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32* %13)
  br label %18

15:                                               ; preds = %2
  %16 = load i32*, i32** %3, align 8
  %17 = call i32 @fputs(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32* %16)
  br label %18

18:                                               ; preds = %15, %12
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i32*, i32** %3, align 8
  %23 = call i32 @fputs(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i32* %22)
  br label %29

24:                                               ; preds = %18
  %25 = load i32*, i32** %3, align 8
  %26 = call i32 @fputs(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32* %25)
  %27 = load i32*, i32** %3, align 8
  %28 = call i32 @fputs(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.5, i64 0, i64 0), i32* %27)
  br label %29

29:                                               ; preds = %24, %21
  %30 = load i32*, i32** %3, align 8
  %31 = call i32 @fputs(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i32* %30)
  %32 = load %struct.str*, %struct.str** @str, align 8
  store %struct.str* %32, %struct.str** %5, align 8
  br label %33

33:                                               ; preds = %205, %29
  %34 = load %struct.str*, %struct.str** %5, align 8
  %35 = load %struct.str*, %struct.str** @str, align 8
  %36 = load i64, i64* @nstr, align 8
  %37 = getelementptr inbounds %struct.str, %struct.str* %35, i64 %36
  %38 = icmp ult %struct.str* %34, %37
  br i1 %38, label %39, label %208

39:                                               ; preds = %33
  store i32 0, i32* %7, align 4
  br label %40

40:                                               ; preds = %61, %39
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @ntypes, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %64

44:                                               ; preds = %40
  %45 = load %struct.str**, %struct.str*** @nodestr, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.str*, %struct.str** %45, i64 %47
  %49 = load %struct.str*, %struct.str** %48, align 8
  %50 = load %struct.str*, %struct.str** %5, align 8
  %51 = icmp eq %struct.str* %49, %50
  br i1 %51, label %52, label %60

52:                                               ; preds = %44
  %53 = load i32*, i32** %3, align 8
  %54 = load i8**, i8*** @nodename, align 8
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8*, i8** %54, i64 %56
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %53, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i8* %58)
  br label %60

60:                                               ; preds = %52, %44
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %7, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %7, align 4
  br label %40

64:                                               ; preds = %40
  %65 = load %struct.str*, %struct.str** %5, align 8
  %66 = getelementptr inbounds %struct.str, %struct.str* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  store i32 %67, i32* %7, align 4
  br label %68

68:                                               ; preds = %199, %64
  %69 = load i32, i32* %7, align 4
  %70 = add nsw i32 %69, -1
  store i32 %70, i32* %7, align 4
  %71 = icmp sge i32 %70, 1
  br i1 %71, label %72, label %200

72:                                               ; preds = %68
  %73 = load %struct.str*, %struct.str** %5, align 8
  %74 = getelementptr inbounds %struct.str, %struct.str* %73, i32 0, i32 2
  %75 = load %struct.field*, %struct.field** %74, align 8
  %76 = load i32, i32* %7, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.field, %struct.field* %75, i64 %77
  store %struct.field* %78, %struct.field** %6, align 8
  %79 = load %struct.field*, %struct.field** %6, align 8
  %80 = getelementptr inbounds %struct.field, %struct.field* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  switch i32 %81, label %199 [
    i32 131, label %82
    i32 130, label %114
    i32 128, label %146
    i32 132, label %178
    i32 129, label %178
  ]

82:                                               ; preds = %72
  %83 = load i32, i32* %4, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %96

85:                                               ; preds = %82
  %86 = load i32*, i32** %3, align 8
  %87 = call i32 @indent(i32 12, i32* %86)
  %88 = load i32*, i32** %3, align 8
  %89 = load %struct.str*, %struct.str** %5, align 8
  %90 = getelementptr inbounds %struct.str, %struct.str* %89, i32 0, i32 1
  %91 = load i8*, i8** %90, align 8
  %92 = load %struct.field*, %struct.field** %6, align 8
  %93 = getelementptr inbounds %struct.field, %struct.field* %92, i32 0, i32 1
  %94 = load i8*, i8** %93, align 8
  %95 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %88, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i8* %91, i8* %94)
  br label %113

96:                                               ; preds = %82
  %97 = load i32*, i32** %3, align 8
  %98 = call i32 @indent(i32 12, i32* %97)
  %99 = load i32*, i32** %3, align 8
  %100 = load %struct.str*, %struct.str** %5, align 8
  %101 = getelementptr inbounds %struct.str, %struct.str* %100, i32 0, i32 1
  %102 = load i8*, i8** %101, align 8
  %103 = load %struct.field*, %struct.field** %6, align 8
  %104 = getelementptr inbounds %struct.field, %struct.field* %103, i32 0, i32 1
  %105 = load i8*, i8** %104, align 8
  %106 = load %struct.str*, %struct.str** %5, align 8
  %107 = getelementptr inbounds %struct.str, %struct.str* %106, i32 0, i32 1
  %108 = load i8*, i8** %107, align 8
  %109 = load %struct.field*, %struct.field** %6, align 8
  %110 = getelementptr inbounds %struct.field, %struct.field* %109, i32 0, i32 1
  %111 = load i8*, i8** %110, align 8
  %112 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %99, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i64 0, i64 0), i8* %102, i8* %105, i8* %108, i8* %111)
  br label %113

113:                                              ; preds = %96, %85
  br label %199

114:                                              ; preds = %72
  %115 = load i32, i32* %4, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %128

117:                                              ; preds = %114
  %118 = load i32*, i32** %3, align 8
  %119 = call i32 @indent(i32 12, i32* %118)
  %120 = load i32*, i32** %3, align 8
  %121 = load %struct.str*, %struct.str** %5, align 8
  %122 = getelementptr inbounds %struct.str, %struct.str* %121, i32 0, i32 1
  %123 = load i8*, i8** %122, align 8
  %124 = load %struct.field*, %struct.field** %6, align 8
  %125 = getelementptr inbounds %struct.field, %struct.field* %124, i32 0, i32 1
  %126 = load i8*, i8** %125, align 8
  %127 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %120, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0), i8* %123, i8* %126)
  br label %145

128:                                              ; preds = %114
  %129 = load i32*, i32** %3, align 8
  %130 = call i32 @indent(i32 12, i32* %129)
  %131 = load i32*, i32** %3, align 8
  %132 = load %struct.str*, %struct.str** %5, align 8
  %133 = getelementptr inbounds %struct.str, %struct.str* %132, i32 0, i32 1
  %134 = load i8*, i8** %133, align 8
  %135 = load %struct.field*, %struct.field** %6, align 8
  %136 = getelementptr inbounds %struct.field, %struct.field* %135, i32 0, i32 1
  %137 = load i8*, i8** %136, align 8
  %138 = load %struct.str*, %struct.str** %5, align 8
  %139 = getelementptr inbounds %struct.str, %struct.str* %138, i32 0, i32 1
  %140 = load i8*, i8** %139, align 8
  %141 = load %struct.field*, %struct.field** %6, align 8
  %142 = getelementptr inbounds %struct.field, %struct.field* %141, i32 0, i32 1
  %143 = load i8*, i8** %142, align 8
  %144 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %131, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.11, i64 0, i64 0), i8* %134, i8* %137, i8* %140, i8* %143)
  br label %145

145:                                              ; preds = %128, %117
  br label %199

146:                                              ; preds = %72
  %147 = load i32, i32* %4, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %160

149:                                              ; preds = %146
  %150 = load i32*, i32** %3, align 8
  %151 = call i32 @indent(i32 12, i32* %150)
  %152 = load i32*, i32** %3, align 8
  %153 = load %struct.str*, %struct.str** %5, align 8
  %154 = getelementptr inbounds %struct.str, %struct.str* %153, i32 0, i32 1
  %155 = load i8*, i8** %154, align 8
  %156 = load %struct.field*, %struct.field** %6, align 8
  %157 = getelementptr inbounds %struct.field, %struct.field* %156, i32 0, i32 1
  %158 = load i8*, i8** %157, align 8
  %159 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %152, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.12, i64 0, i64 0), i8* %155, i8* %158)
  br label %177

160:                                              ; preds = %146
  %161 = load i32*, i32** %3, align 8
  %162 = call i32 @indent(i32 12, i32* %161)
  %163 = load i32*, i32** %3, align 8
  %164 = load %struct.str*, %struct.str** %5, align 8
  %165 = getelementptr inbounds %struct.str, %struct.str* %164, i32 0, i32 1
  %166 = load i8*, i8** %165, align 8
  %167 = load %struct.field*, %struct.field** %6, align 8
  %168 = getelementptr inbounds %struct.field, %struct.field* %167, i32 0, i32 1
  %169 = load i8*, i8** %168, align 8
  %170 = load %struct.str*, %struct.str** %5, align 8
  %171 = getelementptr inbounds %struct.str, %struct.str* %170, i32 0, i32 1
  %172 = load i8*, i8** %171, align 8
  %173 = load %struct.field*, %struct.field** %6, align 8
  %174 = getelementptr inbounds %struct.field, %struct.field* %173, i32 0, i32 1
  %175 = load i8*, i8** %174, align 8
  %176 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %163, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13, i64 0, i64 0), i8* %166, i8* %169, i8* %172, i8* %175)
  br label %177

177:                                              ; preds = %160, %149
  br label %199

178:                                              ; preds = %72, %72
  %179 = load i32, i32* %4, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %198, label %181

181:                                              ; preds = %178
  %182 = load i32*, i32** %3, align 8
  %183 = call i32 @indent(i32 12, i32* %182)
  %184 = load i32*, i32** %3, align 8
  %185 = load %struct.str*, %struct.str** %5, align 8
  %186 = getelementptr inbounds %struct.str, %struct.str* %185, i32 0, i32 1
  %187 = load i8*, i8** %186, align 8
  %188 = load %struct.field*, %struct.field** %6, align 8
  %189 = getelementptr inbounds %struct.field, %struct.field* %188, i32 0, i32 1
  %190 = load i8*, i8** %189, align 8
  %191 = load %struct.str*, %struct.str** %5, align 8
  %192 = getelementptr inbounds %struct.str, %struct.str* %191, i32 0, i32 1
  %193 = load i8*, i8** %192, align 8
  %194 = load %struct.field*, %struct.field** %6, align 8
  %195 = getelementptr inbounds %struct.field, %struct.field* %194, i32 0, i32 1
  %196 = load i8*, i8** %195, align 8
  %197 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %184, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i8* %187, i8* %190, i8* %193, i8* %196)
  br label %198

198:                                              ; preds = %181, %178
  br label %199

199:                                              ; preds = %72, %198, %177, %145, %113
  br label %68

200:                                              ; preds = %68
  %201 = load i32*, i32** %3, align 8
  %202 = call i32 @indent(i32 12, i32* %201)
  %203 = load i32*, i32** %3, align 8
  %204 = call i32 @fputs(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0), i32* %203)
  br label %205

205:                                              ; preds = %200
  %206 = load %struct.str*, %struct.str** %5, align 8
  %207 = getelementptr inbounds %struct.str, %struct.str* %206, i32 1
  store %struct.str* %207, %struct.str** %5, align 8
  br label %33

208:                                              ; preds = %33
  %209 = load i32*, i32** %3, align 8
  %210 = call i32 @fputs(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0), i32* %209)
  %211 = load i32, i32* %4, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %216, label %213

213:                                              ; preds = %208
  %214 = load i32*, i32** %3, align 8
  %215 = call i32 @fputs(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.17, i64 0, i64 0), i32* %214)
  br label %216

216:                                              ; preds = %213, %208
  ret void
}

declare dso_local i32 @fputs(i8*, i32*) #1

declare dso_local i32 @fprintf(i32*, i8*, i8*, ...) #1

declare dso_local i32 @indent(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
