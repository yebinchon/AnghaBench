; ModuleID = '/home/carl/AnghaBench/freebsd/bin/sh/extr_expand.c_expbackq.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/sh/extr_expand.c_expbackq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.node = type { i32 }
%struct.worddest = type { i32 }
%struct.backcmd = type { i8*, i64, i64, i64 }

@expdest = common dso_local global i8* null, align 8
@DQSYNTAX = common dso_local global i8* null, align 8
@BASESYNTAX = common dso_local global i8* null, align 8
@EXP_GLOB = common dso_local global i32 0, align 4
@EXP_CASE = common dso_local global i32 0, align 4
@INTOFF = common dso_local global i32 0, align 4
@EXP_SPLIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"expbackq: read returns %d\0A\00", align 1
@CCTL = common dso_local global i8 0, align 1
@CTLESC = common dso_local global i8 0, align 1
@exitstatus = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"expbackq: done\0A\00", align 1
@INTON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%union.node*, i32, i32, %struct.worddest*)* @expbackq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @expbackq(%union.node* %0, i32 %1, i32 %2, %struct.worddest* %3) #0 {
  %5 = alloca %union.node*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.worddest*, align 8
  %9 = alloca %struct.backcmd, align 8
  %10 = alloca i32, align 4
  %11 = alloca [128 x i8], align 16
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8, align 1
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  store %union.node* %0, %union.node** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.worddest* %3, %struct.worddest** %8, align 8
  %20 = load i8*, i8** @expdest, align 8
  store i8* %20, i8** %13, align 8
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i8*, i8** @DQSYNTAX, align 8
  br label %27

25:                                               ; preds = %4
  %26 = load i8*, i8** @BASESYNTAX, align 8
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi i8* [ %24, %23 ], [ %26, %25 ]
  store i8* %28, i8** %15, align 8
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @EXP_GLOB, align 4
  %31 = load i32, i32* @EXP_CASE, align 4
  %32 = or i32 %30, %31
  %33 = and i32 %29, %32
  store i32 %33, i32* %16, align 4
  %34 = load i32, i32* @INTOFF, align 4
  %35 = load i8*, i8** %13, align 8
  %36 = call i8* @grabstackstr(i8* %35)
  store i8* %36, i8** %12, align 8
  %37 = load %union.node*, %union.node** %5, align 8
  %38 = call i32 @evalbackcmd(%union.node* %37, %struct.backcmd* %9)
  %39 = load i8*, i8** %12, align 8
  %40 = load i8*, i8** %13, align 8
  %41 = call i32 @ungrabstackstr(i8* %39, i8* %40)
  %42 = getelementptr inbounds %struct.backcmd, %struct.backcmd* %9, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  store i8* %43, i8** %12, align 8
  %44 = load i8*, i8** %13, align 8
  %45 = call i8* (...) @stackblock()
  %46 = ptrtoint i8* %44 to i64
  %47 = ptrtoint i8* %45 to i64
  %48 = sub i64 %46, %47
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %19, align 4
  store i64 0, i64* %17, align 8
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %65, label %52

52:                                               ; preds = %27
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @EXP_SPLIT, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %52
  %58 = call i64 (...) @ifsset()
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = call i8* (...) @ifsval()
  br label %63

62:                                               ; preds = %57
  br label %63

63:                                               ; preds = %62, %60
  %64 = phi i8* [ %61, %60 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), %62 ]
  store i8* %64, i8** %18, align 8
  br label %66

65:                                               ; preds = %52, %27
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %18, align 8
  br label %66

66:                                               ; preds = %65, %63
  br label %67

67:                                               ; preds = %168, %112, %66
  %68 = getelementptr inbounds %struct.backcmd, %struct.backcmd* %9, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = add nsw i64 %69, -1
  store i64 %70, i64* %68, align 8
  %71 = icmp slt i64 %70, 0
  br i1 %71, label %72, label %105

72:                                               ; preds = %67
  %73 = getelementptr inbounds %struct.backcmd, %struct.backcmd* %9, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = icmp slt i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %72
  br label %169

77:                                               ; preds = %72
  br label %78

78:                                               ; preds = %90, %77
  %79 = getelementptr inbounds %struct.backcmd, %struct.backcmd* %9, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i64 0, i64 0
  %82 = call i32 @read(i64 %80, i8* %81, i32 128)
  store i32 %82, i32* %10, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %78
  %85 = load i64, i64* @errno, align 8
  %86 = load i64, i64* @EINTR, align 8
  %87 = icmp eq i64 %85, %86
  br label %88

88:                                               ; preds = %84, %78
  %89 = phi i1 [ false, %78 ], [ %87, %84 ]
  br i1 %89, label %90, label %91

90:                                               ; preds = %88
  br label %78

91:                                               ; preds = %88
  %92 = load i32, i32* %10, align 4
  %93 = sext i32 %92 to i64
  %94 = inttoptr i64 %93 to i8*
  %95 = call i32 @TRACE(i8* %94)
  %96 = load i32, i32* %10, align 4
  %97 = icmp sle i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %91
  br label %169

99:                                               ; preds = %91
  %100 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i64 0, i64 0
  store i8* %100, i8** %12, align 8
  %101 = load i32, i32* %10, align 4
  %102 = sub nsw i32 %101, 1
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.backcmd, %struct.backcmd* %9, i32 0, i32 1
  store i64 %103, i64* %104, align 8
  br label %105

105:                                              ; preds = %99, %67
  %106 = load i8*, i8** %12, align 8
  %107 = getelementptr inbounds i8, i8* %106, i32 1
  store i8* %107, i8** %12, align 8
  %108 = load i8, i8* %106, align 1
  store i8 %108, i8* %14, align 1
  %109 = load i8, i8* %14, align 1
  %110 = sext i8 %109 to i32
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %105
  br label %67

113:                                              ; preds = %105
  %114 = load i64, i64* %17, align 8
  %115 = icmp ugt i64 %114, 0
  br i1 %115, label %116, label %125

116:                                              ; preds = %113
  %117 = load i8, i8* %14, align 1
  %118 = sext i8 %117 to i32
  %119 = icmp ne i32 %118, 10
  br i1 %119, label %120, label %125

120:                                              ; preds = %116
  %121 = load i32, i32* %7, align 4
  %122 = load i8*, i8** %13, align 8
  %123 = load %struct.worddest*, %struct.worddest** %8, align 8
  %124 = call i32 @NEXTWORD(i8 signext 10, i32 %121, i8* %122, %struct.worddest* %123)
  store i64 0, i64* %17, align 8
  br label %125

125:                                              ; preds = %120, %116, %113
  %126 = load i8*, i8** %18, align 8
  %127 = load i8, i8* %14, align 1
  %128 = call i32* @strchr(i8* %126, i8 signext %127)
  %129 = icmp ne i32* %128, null
  br i1 %129, label %130, label %144

130:                                              ; preds = %125
  %131 = load i8, i8* %14, align 1
  %132 = sext i8 %131 to i32
  %133 = icmp eq i32 %132, 10
  br i1 %133, label %134, label %137

134:                                              ; preds = %130
  %135 = load i64, i64* %17, align 8
  %136 = add i64 %135, 1
  store i64 %136, i64* %17, align 8
  br label %143

137:                                              ; preds = %130
  %138 = load i8, i8* %14, align 1
  %139 = load i32, i32* %7, align 4
  %140 = load i8*, i8** %13, align 8
  %141 = load %struct.worddest*, %struct.worddest** %8, align 8
  %142 = call i32 @NEXTWORD(i8 signext %138, i32 %139, i8* %140, %struct.worddest* %141)
  br label %143

143:                                              ; preds = %137, %134
  br label %168

144:                                              ; preds = %125
  %145 = load i8*, i8** %13, align 8
  %146 = call i32 @CHECKSTRSPACE(i32 2, i8* %145)
  %147 = load i32, i32* %16, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %164

149:                                              ; preds = %144
  %150 = load i8*, i8** %15, align 8
  %151 = load i8, i8* %14, align 1
  %152 = sext i8 %151 to i32
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i8, i8* %150, i64 %153
  %155 = load i8, i8* %154, align 1
  %156 = sext i8 %155 to i32
  %157 = load i8, i8* @CCTL, align 1
  %158 = sext i8 %157 to i32
  %159 = icmp eq i32 %156, %158
  br i1 %159, label %160, label %164

160:                                              ; preds = %149
  %161 = load i8, i8* @CTLESC, align 1
  %162 = load i8*, i8** %13, align 8
  %163 = call i32 @USTPUTC(i8 signext %161, i8* %162)
  br label %164

164:                                              ; preds = %160, %149, %144
  %165 = load i8, i8* %14, align 1
  %166 = load i8*, i8** %13, align 8
  %167 = call i32 @USTPUTC(i8 signext %165, i8* %166)
  br label %168

168:                                              ; preds = %164, %143
  br label %67

169:                                              ; preds = %98, %76
  br label %170

170:                                              ; preds = %184, %169
  %171 = load i8*, i8** %13, align 8
  %172 = call i8* (...) @stackblock()
  %173 = load i32, i32* %19, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i8, i8* %172, i64 %174
  %176 = icmp ugt i8* %171, %175
  br i1 %176, label %177, label %182

177:                                              ; preds = %170
  %178 = load i8*, i8** %13, align 8
  %179 = call signext i8 @STTOPC(i8* %178)
  %180 = sext i8 %179 to i32
  %181 = icmp eq i32 %180, 10
  br label %182

182:                                              ; preds = %177, %170
  %183 = phi i1 [ false, %170 ], [ %181, %177 ]
  br i1 %183, label %184, label %187

184:                                              ; preds = %182
  %185 = load i8*, i8** %13, align 8
  %186 = call i32 @STUNPUTC(i8* %185)
  br label %170

187:                                              ; preds = %182
  %188 = getelementptr inbounds %struct.backcmd, %struct.backcmd* %9, i32 0, i32 2
  %189 = load i64, i64* %188, align 8
  %190 = icmp sge i64 %189, 0
  br i1 %190, label %191, label %195

191:                                              ; preds = %187
  %192 = getelementptr inbounds %struct.backcmd, %struct.backcmd* %9, i32 0, i32 2
  %193 = load i64, i64* %192, align 8
  %194 = call i32 @close(i64 %193)
  br label %195

195:                                              ; preds = %191, %187
  %196 = getelementptr inbounds %struct.backcmd, %struct.backcmd* %9, i32 0, i32 0
  %197 = load i8*, i8** %196, align 8
  %198 = icmp ne i8* %197, null
  br i1 %198, label %199, label %203

199:                                              ; preds = %195
  %200 = getelementptr inbounds %struct.backcmd, %struct.backcmd* %9, i32 0, i32 0
  %201 = load i8*, i8** %200, align 8
  %202 = call i32 @ckfree(i8* %201)
  br label %203

203:                                              ; preds = %199, %195
  %204 = getelementptr inbounds %struct.backcmd, %struct.backcmd* %9, i32 0, i32 3
  %205 = load i64, i64* %204, align 8
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %216

207:                                              ; preds = %203
  %208 = load i8*, i8** %13, align 8
  %209 = call i8* @grabstackstr(i8* %208)
  store i8* %209, i8** %12, align 8
  %210 = getelementptr inbounds %struct.backcmd, %struct.backcmd* %9, i32 0, i32 3
  %211 = load i64, i64* %210, align 8
  %212 = call i32 @waitforjob(i64 %211, i32* null)
  store i32 %212, i32* @exitstatus, align 4
  %213 = load i8*, i8** %12, align 8
  %214 = load i8*, i8** %13, align 8
  %215 = call i32 @ungrabstackstr(i8* %213, i8* %214)
  br label %216

216:                                              ; preds = %207, %203
  %217 = call i32 @TRACE(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %218 = load i8*, i8** %13, align 8
  store i8* %218, i8** @expdest, align 8
  %219 = load i32, i32* @INTON, align 4
  ret void
}

declare dso_local i8* @grabstackstr(i8*) #1

declare dso_local i32 @evalbackcmd(%union.node*, %struct.backcmd*) #1

declare dso_local i32 @ungrabstackstr(i8*, i8*) #1

declare dso_local i8* @stackblock(...) #1

declare dso_local i64 @ifsset(...) #1

declare dso_local i8* @ifsval(...) #1

declare dso_local i32 @read(i64, i8*, i32) #1

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @NEXTWORD(i8 signext, i32, i8*, %struct.worddest*) #1

declare dso_local i32* @strchr(i8*, i8 signext) #1

declare dso_local i32 @CHECKSTRSPACE(i32, i8*) #1

declare dso_local i32 @USTPUTC(i8 signext, i8*) #1

declare dso_local signext i8 @STTOPC(i8*) #1

declare dso_local i32 @STUNPUTC(i8*) #1

declare dso_local i32 @close(i64) #1

declare dso_local i32 @ckfree(i8*) #1

declare dso_local i32 @waitforjob(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
