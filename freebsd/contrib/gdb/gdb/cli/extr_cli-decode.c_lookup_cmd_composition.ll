; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/cli/extr_cli-decode.c_lookup_cmd_composition.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/cli/extr_cli-decode.c_lookup_cmd_composition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd_list_element = type { %struct.cmd_list_element**, %struct.cmd_list_element* }

@cmdlist = common dso_local global %struct.cmd_list_element* null, align 8
@xdb_commands = common dso_local global i64 0, align 8
@tui_active = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lookup_cmd_composition(i8* %0, %struct.cmd_list_element** %1, %struct.cmd_list_element** %2, %struct.cmd_list_element** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.cmd_list_element**, align 8
  %8 = alloca %struct.cmd_list_element**, align 8
  %9 = alloca %struct.cmd_list_element**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.cmd_list_element*, align 8
  %16 = alloca %struct.cmd_list_element*, align 8
  %17 = alloca i8, align 1
  %18 = alloca i8, align 1
  store i8* %0, i8** %6, align 8
  store %struct.cmd_list_element** %1, %struct.cmd_list_element*** %7, align 8
  store %struct.cmd_list_element** %2, %struct.cmd_list_element*** %8, align 8
  store %struct.cmd_list_element** %3, %struct.cmd_list_element*** %9, align 8
  %19 = load %struct.cmd_list_element**, %struct.cmd_list_element*** %7, align 8
  store %struct.cmd_list_element* null, %struct.cmd_list_element** %19, align 8
  %20 = load %struct.cmd_list_element**, %struct.cmd_list_element*** %8, align 8
  store %struct.cmd_list_element* null, %struct.cmd_list_element** %20, align 8
  %21 = load %struct.cmd_list_element**, %struct.cmd_list_element*** %9, align 8
  store %struct.cmd_list_element* null, %struct.cmd_list_element** %21, align 8
  %22 = load %struct.cmd_list_element*, %struct.cmd_list_element** @cmdlist, align 8
  store %struct.cmd_list_element* %22, %struct.cmd_list_element** %15, align 8
  br label %23

23:                                               ; preds = %4, %222
  %24 = load %struct.cmd_list_element**, %struct.cmd_list_element*** %9, align 8
  %25 = load %struct.cmd_list_element*, %struct.cmd_list_element** %24, align 8
  store %struct.cmd_list_element* %25, %struct.cmd_list_element** %16, align 8
  br label %26

26:                                               ; preds = %38, %23
  %27 = load i8*, i8** %6, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 32
  br i1 %30, label %36, label %31

31:                                               ; preds = %26
  %32 = load i8*, i8** %6, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 9
  br label %36

36:                                               ; preds = %31, %26
  %37 = phi i1 [ true, %26 ], [ %35, %31 ]
  br i1 %37, label %38, label %41

38:                                               ; preds = %36
  %39 = load i8*, i8** %6, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %6, align 8
  br label %26

41:                                               ; preds = %36
  %42 = load i8*, i8** %6, align 8
  store i8* %42, i8** %10, align 8
  br label %43

43:                                               ; preds = %90, %41
  %44 = load i8*, i8** %10, align 8
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %87

48:                                               ; preds = %43
  %49 = load i8*, i8** %10, align 8
  %50 = load i8, i8* %49, align 1
  %51 = call i64 @isalnum(i8 signext %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %85, label %53

53:                                               ; preds = %48
  %54 = load i8*, i8** %10, align 8
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %56, 45
  br i1 %57, label %85, label %58

58:                                               ; preds = %53
  %59 = load i8*, i8** %10, align 8
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %61, 95
  br i1 %62, label %85, label %63

63:                                               ; preds = %58
  %64 = load i64, i64* @xdb_commands, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %83

66:                                               ; preds = %63
  %67 = load i8*, i8** %10, align 8
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp eq i32 %69, 33
  br i1 %70, label %81, label %71

71:                                               ; preds = %66
  %72 = load i8*, i8** %10, align 8
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp eq i32 %74, 47
  br i1 %75, label %81, label %76

76:                                               ; preds = %71
  %77 = load i8*, i8** %10, align 8
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp eq i32 %79, 63
  br label %81

81:                                               ; preds = %76, %71, %66
  %82 = phi i1 [ true, %71 ], [ true, %66 ], [ %80, %76 ]
  br label %83

83:                                               ; preds = %81, %63
  %84 = phi i1 [ false, %63 ], [ %82, %81 ]
  br label %85

85:                                               ; preds = %83, %58, %53, %48
  %86 = phi i1 [ true, %58 ], [ true, %53 ], [ true, %48 ], [ %84, %83 ]
  br label %87

87:                                               ; preds = %85, %43
  %88 = phi i1 [ false, %43 ], [ %86, %85 ]
  br i1 %88, label %89, label %93

89:                                               ; preds = %87
  br label %90

90:                                               ; preds = %89
  %91 = load i8*, i8** %10, align 8
  %92 = getelementptr inbounds i8, i8* %91, i32 1
  store i8* %92, i8** %10, align 8
  br label %43

93:                                               ; preds = %87
  %94 = load i8*, i8** %10, align 8
  %95 = load i8*, i8** %6, align 8
  %96 = icmp eq i8* %94, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %93
  store i32 0, i32* %5, align 4
  br label %224

98:                                               ; preds = %93
  %99 = load i8*, i8** %10, align 8
  %100 = load i8*, i8** %6, align 8
  %101 = ptrtoint i8* %99 to i64
  %102 = ptrtoint i8* %100 to i64
  %103 = sub i64 %101, %102
  %104 = trunc i64 %103 to i32
  store i32 %104, i32* %12, align 4
  %105 = load i32, i32* %12, align 4
  %106 = add nsw i32 %105, 1
  %107 = call i64 @alloca(i32 %106)
  %108 = inttoptr i64 %107 to i8*
  store i8* %108, i8** %11, align 8
  store i32 0, i32* %13, align 4
  br label %109

109:                                              ; preds = %124, %98
  %110 = load i32, i32* %13, align 4
  %111 = load i32, i32* %12, align 4
  %112 = icmp slt i32 %110, %111
  br i1 %112, label %113, label %127

113:                                              ; preds = %109
  %114 = load i8*, i8** %6, align 8
  %115 = load i32, i32* %13, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i8, i8* %114, i64 %116
  %118 = load i8, i8* %117, align 1
  store i8 %118, i8* %17, align 1
  %119 = load i8, i8* %17, align 1
  %120 = load i8*, i8** %11, align 8
  %121 = load i32, i32* %13, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i8, i8* %120, i64 %122
  store i8 %119, i8* %123, align 1
  br label %124

124:                                              ; preds = %113
  %125 = load i32, i32* %13, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %13, align 4
  br label %109

127:                                              ; preds = %109
  %128 = load i8*, i8** %11, align 8
  %129 = load i32, i32* %12, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i8, i8* %128, i64 %130
  store i8 0, i8* %131, align 1
  %132 = load %struct.cmd_list_element**, %struct.cmd_list_element*** %9, align 8
  store %struct.cmd_list_element* null, %struct.cmd_list_element** %132, align 8
  store i32 0, i32* %14, align 4
  %133 = load i8*, i8** %11, align 8
  %134 = load i32, i32* %12, align 4
  %135 = load %struct.cmd_list_element*, %struct.cmd_list_element** %15, align 8
  %136 = call %struct.cmd_list_element* @find_cmd(i8* %133, i32 %134, %struct.cmd_list_element* %135, i32 1, i32* %14)
  %137 = load %struct.cmd_list_element**, %struct.cmd_list_element*** %9, align 8
  store %struct.cmd_list_element* %136, %struct.cmd_list_element** %137, align 8
  %138 = load %struct.cmd_list_element**, %struct.cmd_list_element*** %9, align 8
  %139 = load %struct.cmd_list_element*, %struct.cmd_list_element** %138, align 8
  %140 = icmp ne %struct.cmd_list_element* %139, null
  br i1 %140, label %141, label %144

141:                                              ; preds = %127
  %142 = load i32, i32* %14, align 4
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %181

144:                                              ; preds = %141, %127
  store i32 0, i32* %13, align 4
  br label %145

145:                                              ; preds = %172, %144
  %146 = load i32, i32* %13, align 4
  %147 = load i32, i32* %12, align 4
  %148 = icmp slt i32 %146, %147
  br i1 %148, label %149, label %175

149:                                              ; preds = %145
  %150 = load i8*, i8** %11, align 8
  %151 = load i32, i32* %13, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i8, i8* %150, i64 %152
  %154 = load i8, i8* %153, align 1
  store i8 %154, i8* %18, align 1
  %155 = load i8, i8* %18, align 1
  %156 = call i64 @isupper(i8 signext %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %162

158:                                              ; preds = %149
  %159 = load i8, i8* %18, align 1
  %160 = call signext i8 @tolower(i8 signext %159)
  %161 = sext i8 %160 to i32
  br label %165

162:                                              ; preds = %149
  %163 = load i8, i8* %18, align 1
  %164 = sext i8 %163 to i32
  br label %165

165:                                              ; preds = %162, %158
  %166 = phi i32 [ %161, %158 ], [ %164, %162 ]
  %167 = trunc i32 %166 to i8
  %168 = load i8*, i8** %11, align 8
  %169 = load i32, i32* %13, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i8, i8* %168, i64 %170
  store i8 %167, i8* %171, align 1
  br label %172

172:                                              ; preds = %165
  %173 = load i32, i32* %13, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %13, align 4
  br label %145

175:                                              ; preds = %145
  %176 = load i8*, i8** %11, align 8
  %177 = load i32, i32* %12, align 4
  %178 = load %struct.cmd_list_element*, %struct.cmd_list_element** %15, align 8
  %179 = call %struct.cmd_list_element* @find_cmd(i8* %176, i32 %177, %struct.cmd_list_element* %178, i32 1, i32* %14)
  %180 = load %struct.cmd_list_element**, %struct.cmd_list_element*** %9, align 8
  store %struct.cmd_list_element* %179, %struct.cmd_list_element** %180, align 8
  br label %181

181:                                              ; preds = %175, %141
  %182 = load %struct.cmd_list_element**, %struct.cmd_list_element*** %9, align 8
  %183 = load %struct.cmd_list_element*, %struct.cmd_list_element** %182, align 8
  %184 = icmp eq %struct.cmd_list_element* %183, inttoptr (i64 -1 to %struct.cmd_list_element*)
  br i1 %184, label %185, label %186

185:                                              ; preds = %181
  store i32 0, i32* %5, align 4
  br label %224

186:                                              ; preds = %181
  %187 = load %struct.cmd_list_element**, %struct.cmd_list_element*** %9, align 8
  %188 = load %struct.cmd_list_element*, %struct.cmd_list_element** %187, align 8
  %189 = icmp eq %struct.cmd_list_element* %188, null
  br i1 %189, label %190, label %191

190:                                              ; preds = %186
  store i32 0, i32* %5, align 4
  br label %224

191:                                              ; preds = %186
  %192 = load %struct.cmd_list_element**, %struct.cmd_list_element*** %9, align 8
  %193 = load %struct.cmd_list_element*, %struct.cmd_list_element** %192, align 8
  %194 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %193, i32 0, i32 1
  %195 = load %struct.cmd_list_element*, %struct.cmd_list_element** %194, align 8
  %196 = icmp ne %struct.cmd_list_element* %195, null
  br i1 %196, label %197, label %206

197:                                              ; preds = %191
  %198 = load %struct.cmd_list_element**, %struct.cmd_list_element*** %9, align 8
  %199 = load %struct.cmd_list_element*, %struct.cmd_list_element** %198, align 8
  %200 = load %struct.cmd_list_element**, %struct.cmd_list_element*** %7, align 8
  store %struct.cmd_list_element* %199, %struct.cmd_list_element** %200, align 8
  %201 = load %struct.cmd_list_element**, %struct.cmd_list_element*** %9, align 8
  %202 = load %struct.cmd_list_element*, %struct.cmd_list_element** %201, align 8
  %203 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %202, i32 0, i32 1
  %204 = load %struct.cmd_list_element*, %struct.cmd_list_element** %203, align 8
  %205 = load %struct.cmd_list_element**, %struct.cmd_list_element*** %9, align 8
  store %struct.cmd_list_element* %204, %struct.cmd_list_element** %205, align 8
  br label %206

206:                                              ; preds = %197, %191
  %207 = load %struct.cmd_list_element*, %struct.cmd_list_element** %16, align 8
  %208 = load %struct.cmd_list_element**, %struct.cmd_list_element*** %8, align 8
  store %struct.cmd_list_element* %207, %struct.cmd_list_element** %208, align 8
  br label %209

209:                                              ; preds = %206
  %210 = load %struct.cmd_list_element**, %struct.cmd_list_element*** %9, align 8
  %211 = load %struct.cmd_list_element*, %struct.cmd_list_element** %210, align 8
  %212 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %211, i32 0, i32 0
  %213 = load %struct.cmd_list_element**, %struct.cmd_list_element*** %212, align 8
  %214 = icmp ne %struct.cmd_list_element** %213, null
  br i1 %214, label %215, label %221

215:                                              ; preds = %209
  %216 = load %struct.cmd_list_element**, %struct.cmd_list_element*** %9, align 8
  %217 = load %struct.cmd_list_element*, %struct.cmd_list_element** %216, align 8
  %218 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %217, i32 0, i32 0
  %219 = load %struct.cmd_list_element**, %struct.cmd_list_element*** %218, align 8
  %220 = load %struct.cmd_list_element*, %struct.cmd_list_element** %219, align 8
  store %struct.cmd_list_element* %220, %struct.cmd_list_element** %15, align 8
  br label %222

221:                                              ; preds = %209
  store i32 1, i32* %5, align 4
  br label %224

222:                                              ; preds = %215
  %223 = load i8*, i8** %10, align 8
  store i8* %223, i8** %6, align 8
  br label %23

224:                                              ; preds = %221, %190, %185, %97
  %225 = load i32, i32* %5, align 4
  ret i32 %225
}

declare dso_local i64 @isalnum(i8 signext) #1

declare dso_local i64 @alloca(i32) #1

declare dso_local %struct.cmd_list_element* @find_cmd(i8*, i32, %struct.cmd_list_element*, i32, i32*) #1

declare dso_local i64 @isupper(i8 signext) #1

declare dso_local signext i8 @tolower(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
